package zendesk.support.request;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.FrameLayout;
import com.squareup.picasso.Picasso;
import com.zendesk.sdk.C1790R;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import zendesk.belvedere.BelvedereUi;
import zendesk.belvedere.ImageStream;
import zendesk.suas.CombinedSubscription;
import zendesk.suas.Store;
import zendesk.suas.Subscription;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewConversationsDisabled.class */
public class RequestViewConversationsDisabled extends FrameLayout implements RequestView {
    private AppCompatActivity activity;
    @Inject

    /* renamed from: af */
    ActionFactory f1893af;
    private AttachmentHelper attachmentHelper;
    private ImageStream imageStream;
    private ComponentInputForm inputFormComponent;
    private List<MenuItemsDelegate> menuItemsDelegates = new ArrayList();
    @Inject
    Picasso picasso;
    @Inject
    Store store;
    private Subscription subscription;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate.class */
    public interface MenuItemsDelegate {
        void onMenuItemsClicked(MenuItem menuItem);

        void onMenuItemsInflated(MenuItem menuItem, MenuItem menuItem2);
    }

    public RequestViewConversationsDisabled(Context context) {
        super(context);
        viewInit(context);
    }

    public RequestViewConversationsDisabled(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        viewInit(context);
    }

    public RequestViewConversationsDisabled(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        viewInit(context);
    }

    private Subscription bindAttachmentCarousel(Store store, ActionFactory actionFactory) {
        RecyclerView recyclerView = (RecyclerView) this.activity.findViewById(C1790R.C1793id.request_attachment_carousel);
        AdapterAttachmentCarousel adapterAttachmentCarousel = new AdapterAttachmentCarousel(this.attachmentHelper, this.picasso, actionFactory, store);
        ComponentAttachmentCarousel componentAttachmentCarousel = new ComponentAttachmentCarousel(store, actionFactory, this.imageStream, this.activity, this.attachmentHelper, recyclerView);
        recyclerView.setLayoutManager(new LinearLayoutManager(this.activity, 0, false));
        recyclerView.setAdapter(adapterAttachmentCarousel);
        this.menuItemsDelegates.add(componentAttachmentCarousel);
        return store.addListener(componentAttachmentCarousel.getSelector(), componentAttachmentCarousel);
    }

    private Subscription bindComponents(Store store, ActionFactory actionFactory) {
        return CombinedSubscription.from(bindInput(store), bindAttachmentCarousel(store, actionFactory));
    }

    private Subscription bindInput(Store store) {
        this.inputFormComponent = ComponentInputForm.create(this, store, this.f1893af, this.attachmentHelper);
        this.menuItemsDelegates.add(this.inputFormComponent);
        this.imageStream.getKeyboardHelper().addListener(this.inputFormComponent);
        return store.addListener(this.inputFormComponent.getSelector(), this.inputFormComponent);
    }

    private void viewInit(Context context) {
        inflate(context, C1790R.C1794layout.zs_view_request_conversations_disabled, this);
        this.activity = (AppCompatActivity) context;
    }

    @Override // zendesk.support.request.RequestView
    public boolean hasUnsavedInput() {
        return this.inputFormComponent != null && this.inputFormComponent.hasUnsavedInput();
    }

    @Override // zendesk.support.request.RequestView
    public boolean inflateMenu(MenuInflater menuInflater, Menu menu) {
        menuInflater.inflate(C1790R.C1795menu.zs_view_request_conversations_disabled_menu, menu);
        MenuItem findItem = menu.findItem(C1790R.C1793id.request_conversations_disabled_menu_ic_send);
        MenuItem findItem2 = menu.findItem(C1790R.C1793id.request_conversations_disabled_menu_ic_add_attachments);
        for (MenuItemsDelegate menuItemsDelegate : this.menuItemsDelegates) {
            menuItemsDelegate.onMenuItemsInflated(findItem, findItem2);
        }
        return true;
    }

    public void init(RequestComponent requestComponent) {
        requestComponent.inject(this);
        this.imageStream = BelvedereUi.install(this.activity);
        this.attachmentHelper = new AttachmentHelper(new int[0]);
        this.subscription = bindComponents(this.store, this.f1893af);
        this.subscription.informWithCurrentState();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.subscription != null) {
            this.subscription.removeListener();
        }
    }

    @Override // zendesk.support.request.RequestView
    public boolean onOptionsItemClicked(MenuItem menuItem) {
        for (MenuItemsDelegate menuItemsDelegate : this.menuItemsDelegates) {
            menuItemsDelegate.onMenuItemsClicked(menuItem);
        }
        return true;
    }
}

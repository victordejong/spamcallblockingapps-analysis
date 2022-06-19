package com.callapp.contacts.widget.floatingwidget.p240ui.container;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadCloseButton;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadConfig;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadDefaultConfig;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadOverlayView;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadViewAdapter;
import com.callapp.contacts.widget.floatingwidget.p240ui.MinimizedArrangement;
import com.callapp.contacts.widget.floatingwidget.p240ui.SpringConfigsHolder;
import com.facebook.rebound.C10419h;
import com.facebook.rebound.C10422k;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager.class */
public abstract class DefaultChatHeadManager<T extends Serializable> implements ChatHeadCloseButton.CloseButtonListener, ChatHeadManager<T> {

    /* renamed from: a */
    private final Map<Class<? extends ChatHeadArrangement>, ChatHeadArrangement> f29239a;

    /* renamed from: b */
    private final Context f29240b;

    /* renamed from: c */
    public ChatHeadArrangement f29241c;

    /* renamed from: d */
    private final ChatHeadContainer f29242d;

    /* renamed from: f */
    private int f29244f;

    /* renamed from: g */
    private int f29245g;

    /* renamed from: h */
    private ChatHeadCloseButton f29246h;

    /* renamed from: i */
    private ChatHeadCloseButton f29247i;

    /* renamed from: j */
    private ChatHeadViewAdapter<T> f29248j;

    /* renamed from: k */
    private ChatHeadOverlayView f29249k;

    /* renamed from: l */
    private ChatHeadManager.OnItemSelectedListener<T> f29250l;

    /* renamed from: o */
    private ChatHeadConfig f29253o;

    /* renamed from: p */
    private ChatHeadListener f29254p;

    /* renamed from: q */
    private DefaultChatHeadManager<T>.ArrangementChangeRequest f29255q;

    /* renamed from: r */
    private DisplayMetrics f29256r;

    /* renamed from: e */
    private List<ChatHead<T>> f29243e = new ArrayList(5);

    /* renamed from: n */
    private C10422k f29252n = C10422k.m22825c();

    /* renamed from: m */
    private ImageView f29251m = new ImageView(getContext());

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager$ArrangementChangeRequest */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest.class */
    public class ArrangementChangeRequest {

        /* renamed from: b */
        private final Bundle f29258b;

        /* renamed from: c */
        private final Class<? extends ChatHeadArrangement> f29259c;

        /* renamed from: d */
        private final boolean f29260d;

        public ArrangementChangeRequest(Class<? extends ChatHeadArrangement> cls, Bundle bundle, boolean z) {
            DefaultChatHeadManager.this = r4;
            this.f29259c = cls;
            this.f29258b = bundle;
            this.f29260d = z;
        }

        public Class<? extends ChatHeadArrangement> getArrangement() {
            return this.f29259c;
        }

        public Bundle getExtras() {
            return this.f29258b;
        }

        public boolean isAnimated() {
            return this.f29260d;
        }
    }

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager$SavedState */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private Class<? extends ChatHeadArrangement> activeArrangement;
        private Bundle activeArrangementBundle;
        private LinkedHashMap<? extends Serializable, Boolean> chatHeads;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.activeArrangement = (Class) parcel.readSerializable();
            this.activeArrangementBundle = parcel.readBundle();
            this.chatHeads = (LinkedHashMap) parcel.readSerializable();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public Class<? extends ChatHeadArrangement> getActiveArrangement() {
            return this.activeArrangement;
        }

        public Bundle getActiveArrangementBundle() {
            return this.activeArrangementBundle;
        }

        public Map<? extends Serializable, Boolean> getChatHeads() {
            return this.chatHeads;
        }

        public void setActiveArrangement(Class<? extends ChatHeadArrangement> cls) {
            this.activeArrangement = cls;
        }

        public void setActiveArrangementBundle(Bundle bundle) {
            this.activeArrangementBundle = bundle;
        }

        public void setChatHeads(LinkedHashMap<? extends Serializable, Boolean> linkedHashMap) {
            this.chatHeads = linkedHashMap;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeSerializable(this.activeArrangement);
            parcel.writeBundle(this.activeArrangementBundle);
            parcel.writeSerializable(this.chatHeads);
        }
    }

    public DefaultChatHeadManager(Context context, ChatHeadContainer chatHeadContainer) {
        HashMap hashMap = new HashMap(3);
        this.f29239a = hashMap;
        this.f29240b = context;
        this.f29242d = chatHeadContainer;
        this.f29256r = chatHeadContainer.getDisplayMetrics();
        ChatHeadConfig mo26424a = mo26424a(context);
        chatHeadContainer.mo26391a(this);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.f29256r = displayMetrics;
        this.f29253o = mo26424a;
        this.f29246h = new ChatHeadCloseButton(context, this, this.f29245g, this.f29244f);
        this.f29247i = new ChatHeadCloseButton(context, this, this.f29245g, this.f29244f);
        ViewGroup.LayoutParams mo26402a = chatHeadContainer.mo26402a(mo26424a.getCloseButtonHeight(), mo26424a.getCloseButtonWidth(), 8388659);
        this.f29246h.setListener(this);
        this.f29247i.setListener(this);
        chatHeadContainer.mo26394a(this.f29246h, mo26402a);
        chatHeadContainer.mo26394a(this.f29247i, mo26402a);
        ViewGroup.LayoutParams mo26402a2 = chatHeadContainer.mo26402a(getContext().getResources().getDimensionPixelOffset(2131165661), -1, 80);
        this.f29251m.setVisibility(8);
        chatHeadContainer.mo26394a(this.f29251m, mo26402a2);
        hashMap.put(MinimizedArrangement.class, new MinimizedArrangement(this));
        setupOverlay(context);
        setConfig(mo26424a);
        C10419h.m22830a().m22829a(SpringConfigsHolder.f29141c, "dragging mode");
        C10419h.m22830a().m22829a(SpringConfigsHolder.f29139a, "not dragging mode");
    }

    /* renamed from: a */
    private double m26421a(ChatHeadCloseButton chatHeadCloseButton, float f, float f2) {
        if (chatHeadCloseButton.isDisappeared() || chatHeadCloseButton.getVisibility() != 0) {
            return Double.MAX_VALUE;
        }
        return Math.hypot(((f - chatHeadCloseButton.getLeft()) - getChatHeadContainer().mo26401a(chatHeadCloseButton)) - (chatHeadCloseButton.getMeasuredWidth() / 2), ((f2 - chatHeadCloseButton.getTop()) - getChatHeadContainer().mo26399b(chatHeadCloseButton)) - (chatHeadCloseButton.getMeasuredHeight() / 2));
    }

    /* renamed from: a */
    private void m26423a(ChatHead chatHead) {
        if (chatHead == null || chatHead.getParent() == null) {
            return;
        }
        chatHead.mo26460b();
        this.f29242d.mo26397d(chatHead);
        ChatHeadArrangement chatHeadArrangement = this.f29241c;
        if (chatHeadArrangement != null) {
            chatHeadArrangement.mo26513a(chatHead);
        }
        if (this.f29254p == null) {
            return;
        }
        chatHead.getKey();
    }

    /* renamed from: a */
    private static int[] m26420a(ChatHeadCloseButton chatHeadCloseButton, ChatHead chatHead) {
        return new int[]{((chatHeadCloseButton.getLeft() + chatHeadCloseButton.getEndValueX()) + (chatHeadCloseButton.getMeasuredWidth() / 2)) - (chatHead.getMeasuredWidth() / 2), ((chatHeadCloseButton.getTop() + chatHeadCloseButton.getEndValueY()) + (chatHeadCloseButton.getMeasuredHeight() / 2)) - (chatHead.getMeasuredHeight() / 2)};
    }

    private void setArrangementImpl(DefaultChatHeadManager<T>.ArrangementChangeRequest arrangementChangeRequest) {
        ChatHeadArrangement chatHeadArrangement = this.f29239a.get(arrangementChangeRequest.getArrangement());
        Bundle extras = arrangementChangeRequest.getExtras();
        boolean z = this.f29241c != chatHeadArrangement;
        Bundle bundle = extras;
        if (extras == null) {
            bundle = new Bundle();
        }
        ChatHeadArrangement chatHeadArrangement2 = this.f29241c;
        if (chatHeadArrangement2 != null) {
            bundle.putAll(chatHeadArrangement2.getRetainBundle());
            this.f29241c.mo26514a();
        }
        this.f29241c = chatHeadArrangement;
        chatHeadArrangement.mo26508a(this, bundle, this.f29244f, this.f29245g, arrangementChangeRequest.isAnimated());
        if (z) {
            this.f29242d.mo26392a(chatHeadArrangement);
        }
    }

    private void setupOverlay(Context context) {
        this.f29249k = new ChatHeadOverlayView(context);
        getChatHeadContainer().mo26394a(this.f29249k, getChatHeadContainer().mo26402a(-1, -1, 0));
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: a */
    public final double mo26426a(float f, float f2) {
        return m26421a(this.f29246h, f, f2);
    }

    /* renamed from: a */
    protected ChatHead<T> mo26418a(T t, boolean z) {
        return new ChatHead<>(this, this.f29252n, getContext(), z);
    }

    /* renamed from: a */
    public ChatHead<T> mo26417a(T t, boolean z, boolean z2) {
        ChatHeadArrangement chatHeadArrangement;
        ChatHead<T> m26412b = m26412b((DefaultChatHeadManager<T>) t);
        ChatHead<T> chatHead = m26412b;
        if (m26412b == null) {
            chatHead = mo26418a((DefaultChatHeadManager<T>) t, z);
            chatHead.setKey(t);
            setupPosition(chatHead);
            this.f29243e.add(chatHead);
            this.f29242d.mo26394a(chatHead, this.f29242d.mo26402a(getConfig().getHeadWidth(), getConfig().getHeadHeight(), 8388659));
            if (this.f29243e.size() > this.f29253o.f29091a && (chatHeadArrangement = this.f29241c) != null) {
                chatHeadArrangement.mo26502c();
            }
            View chatHeadView = this.f29248j.getChatHeadView(t);
            if (chatHeadView != null) {
                m26412b((DefaultChatHeadManager<T>) t).setChatHeadView(chatHeadView);
            }
            ChatHeadArrangement chatHeadArrangement2 = this.f29241c;
            if (chatHeadArrangement2 != null) {
                chatHeadArrangement2.mo26511a(chatHead, z2);
            }
            ChatHeadListener chatHeadListener = this.f29254p;
            if (chatHeadListener != null) {
                chatHeadListener.mo26429s_();
            }
            this.f29251m.bringToFront();
        }
        return chatHead;
    }

    /* renamed from: a */
    protected ChatHeadConfig mo26424a(Context context) {
        return new ChatHeadDefaultConfig(context);
    }

    /* renamed from: a */
    public void mo26428a() {
        this.f29242d.mo26396a();
    }

    /* renamed from: a */
    public void mo26427a(double d, double d2) {
    }

    /* renamed from: a */
    public void mo26425a(int i, int i2) {
        ChatHeadArrangement chatHeadArrangement;
        boolean z = (i == this.f29245g || i2 == this.f29244f) ? false : true;
        this.f29245g = i;
        this.f29244f = i2;
        setCloseButtons(i, i2);
        if (this.f29245g <= 0 || this.f29244f <= 0) {
            return;
        }
        DefaultChatHeadManager<T>.ArrangementChangeRequest arrangementChangeRequest = this.f29255q;
        if (arrangementChangeRequest != null) {
            setArrangementImpl(arrangementChangeRequest);
            this.f29255q = null;
        } else if (!z || (chatHeadArrangement = this.f29241c) == null) {
        } else {
            setArrangementImpl(new ArrangementChangeRequest(chatHeadArrangement.getClass(), null, false));
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: a */
    public final void mo26422a(ChatHeadCloseButton chatHeadCloseButton) {
        this.f29241c.mo26509a(this);
        chatHeadCloseButton.getOnCapturedViewCallback().run();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: a */
    public final void mo26416a(Class<? extends ChatHeadArrangement> cls, Bundle bundle) {
        this.f29255q = new ArrangementChangeRequest(cls, null, true);
        this.f29242d.mo26400b();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: a */
    public final boolean mo26419a(T t) {
        ChatHead<T> m26412b = m26412b((DefaultChatHeadManager<T>) t);
        if (m26412b != null) {
            this.f29243e.remove(m26412b);
            m26423a(m26412b);
            return true;
        }
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: b */
    public final double mo26415b(float f, float f2) {
        return m26421a(this.f29247i, f, f2);
    }

    /* renamed from: b */
    public int mo26414b(int i) {
        return i;
    }

    /* renamed from: b */
    public final ChatHead<T> m26412b(T t) {
        for (ChatHead<T> chatHead : this.f29243e) {
            if (chatHead.getKey().equals(t)) {
                return chatHead;
            }
        }
        return null;
    }

    /* renamed from: b */
    public boolean mo26413b(ChatHead<T> chatHead) {
        ChatHeadManager.OnItemSelectedListener<T> onItemSelectedListener = this.f29250l;
        if (onItemSelectedListener != null) {
            chatHead.getKey();
            return onItemSelectedListener.mo26437a(chatHead);
        }
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadCloseButton.CloseButtonListener
    /* renamed from: c */
    public final void mo26411c() {
        if (!getConfig().isCloseButtonHidden()) {
            this.f29251m.setVisibility(0);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: c */
    public final int[] mo26410c(ChatHead chatHead) {
        return m26420a(this.f29246h, chatHead);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadCloseButton.CloseButtonListener
    /* renamed from: d */
    public final void mo26409d() {
        ImageView imageView = this.f29251m;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: d */
    public final int[] mo26408d(ChatHead chatHead) {
        return m26420a(this.f29247i, chatHead);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: e */
    public final void mo26407e() {
        Iterator<ChatHead<T>> it2 = this.f29243e.iterator();
        while (it2.hasNext()) {
            it2.remove();
            m26423a(it2.next());
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: f */
    public final void mo26406f() {
        ChatHeadCloseButton chatHeadCloseButton = this.f29246h;
        if (chatHeadCloseButton != null) {
            chatHeadCloseButton.m26520e();
        }
        ChatHeadCloseButton chatHeadCloseButton2 = this.f29247i;
        if (chatHeadCloseButton2 != null) {
            chatHeadCloseButton2.m26520e();
        }
    }

    /* renamed from: g */
    public void mo26405g() {
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public ChatHeadArrangement getActiveArrangement() {
        ChatHeadArrangement chatHeadArrangement = this.f29241c;
        if (chatHeadArrangement != null) {
            return chatHeadArrangement;
        }
        return null;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public ChatHeadContainer getChatHeadContainer() {
        return this.f29242d;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public List<ChatHead<T>> getChatHeads() {
        return this.f29243e;
    }

    public ImageView getCloseButtonShadow() {
        return this.f29251m;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public ChatHeadConfig getConfig() {
        return this.f29253o;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public Context getContext() {
        return this.f29240b;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public DisplayMetrics getDisplayMetrics() {
        return this.f29256r;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public ChatHeadCloseButton getLeftCloseButton() {
        return this.f29246h;
    }

    public ChatHeadListener getListener() {
        return this.f29254p;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public int getMaxHeight() {
        return this.f29245g;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public int getMaxWidth() {
        return this.f29244f;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public ChatHeadCloseButton getRightCloseButton() {
        return this.f29247i;
    }

    public C10422k getSpringSystem() {
        return this.f29252n;
    }

    public ChatHeadViewAdapter getViewAdapter() {
        return this.f29248j;
    }

    /* renamed from: h */
    public void mo26404h() {
    }

    /* renamed from: i */
    public /* synthetic */ boolean mo26403i() {
        return ChatHeadManager._CC.$default$i(this);
    }

    public void setChatHeadToDefaultPosition$6fde7147(ChatHead chatHead) {
        chatHead.getHorizontalSpring().m22845a(-100.0d, true);
        chatHead.getVerticalSpring().m22845a(-100.0d, true);
    }

    protected void setCloseButtons(int i, int i2) {
        this.f29246h.m26520e();
        float f = i2;
        int i3 = (int) (0.3f * f);
        int i4 = (int) (i * 0.9f);
        this.f29246h.setCenter(i3, i4);
        this.f29247i.m26520e();
        this.f29247i.setCenter((int) (f * 0.8f), i4);
    }

    public void setConfig(ChatHeadConfig chatHeadConfig) {
        this.f29253o = chatHeadConfig;
        if (this.f29246h != null) {
            if (chatHeadConfig.isCloseButtonHidden()) {
                this.f29246h.setVisibility(8);
            } else {
                this.f29246h.setVisibility(0);
            }
        }
        for (Map.Entry<Class<? extends ChatHeadArrangement>, ChatHeadArrangement> entry : this.f29239a.entrySet()) {
            entry.getValue();
        }
    }

    public void setListener(ChatHeadListener chatHeadListener) {
        this.f29254p = chatHeadListener;
    }

    public void setOnItemSelectedListener(ChatHeadManager.OnItemSelectedListener<T> onItemSelectedListener) {
        this.f29250l = onItemSelectedListener;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    public void setViewAdapter(ChatHeadViewAdapter chatHeadViewAdapter) {
        this.f29248j = chatHeadViewAdapter;
    }

    protected void setupPosition(ChatHead<T> chatHead) {
        chatHead.getVerticalSpring().m22845a(getConfig().getInitialPosition().y, true);
        chatHead.getHorizontalSpring().m22845a(getConfig().getInitialPosition().x, true);
    }
}

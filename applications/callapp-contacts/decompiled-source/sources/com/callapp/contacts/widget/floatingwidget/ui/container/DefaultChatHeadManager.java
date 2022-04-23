package com.callapp.contacts.widget.floatingwidget.ui.container;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadConfig;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadDefaultConfig;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadOverlayView;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadViewAdapter;
import com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement;
import com.callapp.contacts.widget.floatingwidget.ui.SpringConfigsHolder;
import com.facebook.rebound.h;
import com.facebook.rebound.k;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager.class */
public abstract class DefaultChatHeadManager<T extends Serializable> implements ChatHeadCloseButton.CloseButtonListener, ChatHeadManager<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<? extends ChatHeadArrangement>, ChatHeadArrangement> f16793a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f16794b;

    /* renamed from: c  reason: collision with root package name */
    public ChatHeadArrangement f16795c;

    /* renamed from: d  reason: collision with root package name */
    private final ChatHeadContainer f16796d;
    private int f;
    private int g;
    private ChatHeadCloseButton h;
    private ChatHeadCloseButton i;
    private ChatHeadViewAdapter<T> j;
    private ChatHeadOverlayView k;
    private ChatHeadManager.OnItemSelectedListener<T> l;
    private ChatHeadConfig o;
    private ChatHeadListener p;
    private DefaultChatHeadManager<T>.ArrangementChangeRequest q;
    private DisplayMetrics r;
    private List<ChatHead<T>> e = new ArrayList(5);
    private k n = k.c();
    private ImageView m = new ImageView(getContext());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager$ArrangementChangeRequest.class */
    public class ArrangementChangeRequest {

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f16798b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<? extends ChatHeadArrangement> f16799c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f16800d;

        public ArrangementChangeRequest(Class<? extends ChatHeadArrangement> cls, Bundle bundle, boolean z) {
            this.f16799c = cls;
            this.f16798b = bundle;
            this.f16800d = z;
        }

        public Class<? extends ChatHeadArrangement> getArrangement() {
            return this.f16799c;
        }

        public Bundle getExtras() {
            return this.f16798b;
        }

        public boolean isAnimated() {
            return this.f16800d;
        }
    }

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
        this.f16793a = hashMap;
        this.f16794b = context;
        this.f16796d = chatHeadContainer;
        this.r = chatHeadContainer.getDisplayMetrics();
        ChatHeadConfig a2 = a(context);
        chatHeadContainer.a(this);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.r = displayMetrics;
        this.o = a2;
        this.h = new ChatHeadCloseButton(context, this, this.g, this.f);
        this.i = new ChatHeadCloseButton(context, this, this.g, this.f);
        ViewGroup.LayoutParams a3 = chatHeadContainer.a(a2.getCloseButtonHeight(), a2.getCloseButtonWidth(), 8388659);
        this.h.setListener(this);
        this.i.setListener(this);
        chatHeadContainer.a(this.h, a3);
        chatHeadContainer.a(this.i, a3);
        ViewGroup.LayoutParams a4 = chatHeadContainer.a(getContext().getResources().getDimensionPixelOffset(2131165661), -1, 80);
        this.m.setVisibility(8);
        chatHeadContainer.a(this.m, a4);
        hashMap.put(MinimizedArrangement.class, new MinimizedArrangement(this));
        setupOverlay(context);
        setConfig(a2);
        h.a().a(SpringConfigsHolder.f16738c, "dragging mode");
        h.a().a(SpringConfigsHolder.f16736a, "not dragging mode");
    }

    private double a(ChatHeadCloseButton chatHeadCloseButton, float f, float f2) {
        if (chatHeadCloseButton.isDisappeared() || chatHeadCloseButton.getVisibility() != 0) {
            return Double.MAX_VALUE;
        }
        return Math.hypot(((f - chatHeadCloseButton.getLeft()) - getChatHeadContainer().a(chatHeadCloseButton)) - (chatHeadCloseButton.getMeasuredWidth() / 2), ((f2 - chatHeadCloseButton.getTop()) - getChatHeadContainer().b(chatHeadCloseButton)) - (chatHeadCloseButton.getMeasuredHeight() / 2));
    }

    private void a(ChatHead chatHead) {
        if (chatHead != null && chatHead.getParent() != null) {
            chatHead.b();
            this.f16796d.d(chatHead);
            ChatHeadArrangement chatHeadArrangement = this.f16795c;
            if (chatHeadArrangement != null) {
                chatHeadArrangement.a(chatHead);
            }
            if (this.p != null) {
                chatHead.getKey();
            }
        }
    }

    private static int[] a(ChatHeadCloseButton chatHeadCloseButton, ChatHead chatHead) {
        return new int[]{((chatHeadCloseButton.getLeft() + chatHeadCloseButton.getEndValueX()) + (chatHeadCloseButton.getMeasuredWidth() / 2)) - (chatHead.getMeasuredWidth() / 2), ((chatHeadCloseButton.getTop() + chatHeadCloseButton.getEndValueY()) + (chatHeadCloseButton.getMeasuredHeight() / 2)) - (chatHead.getMeasuredHeight() / 2)};
    }

    private void setArrangementImpl(DefaultChatHeadManager<T>.ArrangementChangeRequest arrangementChangeRequest) {
        ChatHeadArrangement chatHeadArrangement = this.f16793a.get(arrangementChangeRequest.getArrangement());
        Bundle extras = arrangementChangeRequest.getExtras();
        boolean z = this.f16795c != chatHeadArrangement;
        Bundle bundle = extras;
        if (extras == null) {
            bundle = new Bundle();
        }
        ChatHeadArrangement chatHeadArrangement2 = this.f16795c;
        if (chatHeadArrangement2 != null) {
            bundle.putAll(chatHeadArrangement2.getRetainBundle());
            this.f16795c.a();
        }
        this.f16795c = chatHeadArrangement;
        chatHeadArrangement.a(this, bundle, this.f, this.g, arrangementChangeRequest.isAnimated());
        if (z) {
            this.f16796d.a(chatHeadArrangement);
        }
    }

    private void setupOverlay(Context context) {
        this.k = new ChatHeadOverlayView(context);
        getChatHeadContainer().a(this.k, getChatHeadContainer().a(-1, -1, 0));
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final double a(float f, float f2) {
        return a(this.h, f, f2);
    }

    protected ChatHead<T> a(T t, boolean z) {
        return new ChatHead<>(this, this.n, getContext(), z);
    }

    public ChatHead<T> a(T t, boolean z, boolean z2) {
        ChatHeadArrangement chatHeadArrangement;
        ChatHead<T> b2 = b((DefaultChatHeadManager<T>) t);
        ChatHead<T> chatHead = b2;
        if (b2 == null) {
            chatHead = a((DefaultChatHeadManager<T>) t, z);
            chatHead.setKey(t);
            setupPosition(chatHead);
            this.e.add(chatHead);
            this.f16796d.a(chatHead, this.f16796d.a(getConfig().getHeadWidth(), getConfig().getHeadHeight(), 8388659));
            if (this.e.size() > this.o.f16715a && (chatHeadArrangement = this.f16795c) != null) {
                chatHeadArrangement.c();
            }
            View chatHeadView = this.j.getChatHeadView(t);
            if (chatHeadView != null) {
                b((DefaultChatHeadManager<T>) t).setChatHeadView(chatHeadView);
            }
            ChatHeadArrangement chatHeadArrangement2 = this.f16795c;
            if (chatHeadArrangement2 != null) {
                chatHeadArrangement2.a(chatHead, z2);
            }
            ChatHeadListener chatHeadListener = this.p;
            if (chatHeadListener != null) {
                chatHeadListener.s_();
            }
            this.m.bringToFront();
        }
        return chatHead;
    }

    protected ChatHeadConfig a(Context context) {
        return new ChatHeadDefaultConfig(context);
    }

    public void a() {
        this.f16796d.a();
    }

    public void a(double d2, double d3) {
    }

    public void a(int i, int i2) {
        ChatHeadArrangement chatHeadArrangement;
        boolean z = (i == this.g || i2 == this.f) ? false : true;
        this.g = i;
        this.f = i2;
        setCloseButtons(i, i2);
        if (this.g > 0 && this.f > 0) {
            DefaultChatHeadManager<T>.ArrangementChangeRequest arrangementChangeRequest = this.q;
            if (arrangementChangeRequest != null) {
                setArrangementImpl(arrangementChangeRequest);
                this.q = null;
            } else if (z && (chatHeadArrangement = this.f16795c) != null) {
                setArrangementImpl(new ArrangementChangeRequest(chatHeadArrangement.getClass(), null, false));
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void a(ChatHeadCloseButton chatHeadCloseButton) {
        this.f16795c.a(this);
        chatHeadCloseButton.getOnCapturedViewCallback().run();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void a(Class<? extends ChatHeadArrangement> cls, Bundle bundle) {
        this.q = new ArrangementChangeRequest(cls, null, true);
        this.f16796d.b();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final boolean a(T t) {
        ChatHead<T> b2 = b((DefaultChatHeadManager<T>) t);
        if (b2 == null) {
            return false;
        }
        this.e.remove(b2);
        a(b2);
        return true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final double b(float f, float f2) {
        return a(this.i, f, f2);
    }

    public int b(int i) {
        return i;
    }

    public final ChatHead<T> b(T t) {
        for (ChatHead<T> chatHead : this.e) {
            if (chatHead.getKey().equals(t)) {
                return chatHead;
            }
        }
        return null;
    }

    public boolean b(ChatHead<T> chatHead) {
        ChatHeadManager.OnItemSelectedListener<T> onItemSelectedListener = this.l;
        if (onItemSelectedListener == null) {
            return false;
        }
        chatHead.getKey();
        return onItemSelectedListener.a(chatHead);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.CloseButtonListener
    public final void c() {
        if (!getConfig().isCloseButtonHidden()) {
            this.m.setVisibility(0);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final int[] c(ChatHead chatHead) {
        return a(this.h, chatHead);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton.CloseButtonListener
    public final void d() {
        ImageView imageView = this.m;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final int[] d(ChatHead chatHead) {
        return a(this.i, chatHead);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void e() {
        Iterator<ChatHead<T>> it2 = this.e.iterator();
        while (it2.hasNext()) {
            it2.remove();
            a(it2.next());
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void f() {
        ChatHeadCloseButton chatHeadCloseButton = this.h;
        if (chatHeadCloseButton != null) {
            chatHeadCloseButton.e();
        }
        ChatHeadCloseButton chatHeadCloseButton2 = this.i;
        if (chatHeadCloseButton2 != null) {
            chatHeadCloseButton2.e();
        }
    }

    public void g() {
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public ChatHeadArrangement getActiveArrangement() {
        ChatHeadArrangement chatHeadArrangement = this.f16795c;
        if (chatHeadArrangement != null) {
            return chatHeadArrangement;
        }
        return null;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public ChatHeadContainer getChatHeadContainer() {
        return this.f16796d;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public List<ChatHead<T>> getChatHeads() {
        return this.e;
    }

    public ImageView getCloseButtonShadow() {
        return this.m;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public ChatHeadConfig getConfig() {
        return this.o;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public Context getContext() {
        return this.f16794b;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public DisplayMetrics getDisplayMetrics() {
        return this.r;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public ChatHeadCloseButton getLeftCloseButton() {
        return this.h;
    }

    public ChatHeadListener getListener() {
        return this.p;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public int getMaxHeight() {
        return this.g;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public int getMaxWidth() {
        return this.f;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public ChatHeadCloseButton getRightCloseButton() {
        return this.i;
    }

    public k getSpringSystem() {
        return this.n;
    }

    public ChatHeadViewAdapter getViewAdapter() {
        return this.j;
    }

    public void h() {
    }

    public /* synthetic */ boolean i() {
        return ChatHeadManager._CC.$default$i(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setChatHeadToDefaultPosition$6fde7147(ChatHead chatHead) {
        chatHead.getHorizontalSpring().a(-100.0d, true);
        chatHead.getVerticalSpring().a(-100.0d, true);
    }

    protected void setCloseButtons(int i, int i2) {
        this.h.e();
        float f = i2;
        int i3 = (int) (0.3f * f);
        int i4 = (int) (i * 0.9f);
        this.h.setCenter(i3, i4);
        this.i.e();
        this.i.setCenter((int) (f * 0.8f), i4);
    }

    public void setConfig(ChatHeadConfig chatHeadConfig) {
        this.o = chatHeadConfig;
        if (this.h != null) {
            if (chatHeadConfig.isCloseButtonHidden()) {
                this.h.setVisibility(8);
            } else {
                this.h.setVisibility(0);
            }
        }
        for (Map.Entry<Class<? extends ChatHeadArrangement>, ChatHeadArrangement> entry : this.f16793a.entrySet()) {
            entry.getValue();
        }
    }

    public void setListener(ChatHeadListener chatHeadListener) {
        this.p = chatHeadListener;
    }

    public void setOnItemSelectedListener(ChatHeadManager.OnItemSelectedListener<T> onItemSelectedListener) {
        this.l = onItemSelectedListener;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public void setViewAdapter(ChatHeadViewAdapter chatHeadViewAdapter) {
        this.j = chatHeadViewAdapter;
    }

    protected void setupPosition(ChatHead<T> chatHead) {
        chatHead.getVerticalSpring().a(getConfig().getInitialPosition().y, true);
        chatHead.getHorizontalSpring().a(getConfig().getInitialPosition().x, true);
    }
}

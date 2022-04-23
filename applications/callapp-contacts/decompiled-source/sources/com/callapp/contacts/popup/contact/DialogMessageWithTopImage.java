package com.callapp.contacts.popup.contact;

import android.graphics.ColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogMessageWithTopImage.class */
public class DialogMessageWithTopImage extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private CharSequence f15490a;

    /* renamed from: b  reason: collision with root package name */
    private CharSequence f15491b;

    /* renamed from: c  reason: collision with root package name */
    private String f15492c;

    /* renamed from: d  reason: collision with root package name */
    private String f15493d;
    private final int e;
    private final String f;
    private final int g;
    private final int h;
    private DialogPopup.IDialogOnClickListener i;
    private DialogPopup.IDialogOnClickListener j;
    private final int k;
    private boolean l;
    private int m;
    private float n;
    private float o;

    public DialogMessageWithTopImage(int i, int i2, int i3, CharSequence charSequence, int i4, CharSequence charSequence2, String str, DialogPopup.IDialogOnClickListener iDialogOnClickListener, String str2, boolean z, int i5, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this(null, i, i2, i3, charSequence, i4, charSequence2, str, z, iDialogOnClickListener, str2, i5, iDialogOnClickListener2);
    }

    public DialogMessageWithTopImage(int i, CharSequence charSequence, int i2, CharSequence charSequence2, String str, DialogPopup.IDialogOnClickListener iDialogOnClickListener, String str2, int i3, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this(null, i, 0, 0, charSequence, i2, charSequence2, str, false, iDialogOnClickListener, str2, i3, iDialogOnClickListener2);
    }

    public DialogMessageWithTopImage(int i, CharSequence charSequence, CharSequence charSequence2, String str, DialogPopup.IDialogOnClickListener iDialogOnClickListener, String str2, int i2, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this(i, charSequence, charSequence2, str, false, iDialogOnClickListener, str2, i2, iDialogOnClickListener2);
    }

    public DialogMessageWithTopImage(int i, CharSequence charSequence, CharSequence charSequence2, String str, boolean z, DialogPopup.IDialogOnClickListener iDialogOnClickListener, String str2, int i2, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this(null, i, 0, 0, charSequence, 2131100140, charSequence2, str, z, iDialogOnClickListener, str2, i2, iDialogOnClickListener2);
    }

    private DialogMessageWithTopImage(String str, int i, int i2, int i3, CharSequence charSequence, int i4, CharSequence charSequence2, String str2, boolean z, DialogPopup.IDialogOnClickListener iDialogOnClickListener, String str3, int i5, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this.f15490a = null;
        this.f15491b = null;
        this.f15492c = null;
        this.f15493d = null;
        this.i = null;
        this.j = null;
        this.l = false;
        this.n = BitmapDescriptorFactory.HUE_RED;
        this.o = BitmapDescriptorFactory.HUE_RED;
        if (charSequence != null) {
            this.f15490a = charSequence;
        }
        if (charSequence2 != null) {
            this.f15491b = charSequence2;
        }
        if (str2 != null) {
            this.f15492c = str2;
        }
        if (str3 != null) {
            this.f15493d = str3;
        }
        this.i = iDialogOnClickListener;
        this.j = iDialogOnClickListener2;
        this.e = i;
        this.f = str;
        this.g = i2;
        this.h = i3;
        this.k = i5;
        this.l = z;
        this.m = i4;
    }

    public DialogMessageWithTopImage(String str, int i, CharSequence charSequence, CharSequence charSequence2, String str2, DialogPopup.IDialogOnClickListener iDialogOnClickListener, String str3, int i2, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this(str, i, 0, 0, charSequence, 2131100140, charSequence2, str2, false, iDialogOnClickListener, str3, i2, iDialogOnClickListener2);
    }

    protected int getLayoutResource() {
        return 2131558617;
    }

    protected CharSequence getMessage() {
        return this.f15491b;
    }

    protected String getNegativeBtnText() {
        return this.f15493d;
    }

    protected DialogPopup.IDialogOnClickListener getNegativeListener() {
        return this.j;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    protected String getPositiveBtnText() {
        return this.f15492c;
    }

    protected DialogPopup.IDialogOnClickListener getPositiveListener() {
        return this.i;
    }

    protected CharSequence getTitle() {
        return this.f15490a;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        setupViews(inflate);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setMessageSize(float f) {
        this.n = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPositiveListener(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        this.i = iDialogOnClickListener;
    }

    protected void setupViews(View view) {
        setupTextViewMember(view, getTitle(), 2131364429, this.m);
        setupTextViewMember(view, getMessage(), 2131364424);
        if (this.n > BitmapDescriptorFactory.HUE_RED) {
            ((TextView) view.findViewById(2131364424)).setTextSize(this.n);
        }
        if (this.o > BitmapDescriptorFactory.HUE_RED) {
            ((TextView) view.findViewById(2131364429)).setTextSize(this.o);
        }
        setupButton(view, getPositiveListener(), 2131362584, getPositiveBtnText(), this.l);
        setupButton(view, getNegativeListener(), 2131362581, getNegativeBtnText(), this.k);
        ImageView imageView = (ImageView) view.findViewById(2131364184);
        ImageUtils.a((ImageView) view.findViewById(2131362069), this.g, (ColorFilter) null);
        ImageUtils.a((ImageView) view.findViewById(2131362070), this.h, (ColorFilter) null);
        if (StringUtils.b((CharSequence) this.f)) {
            new GlideUtils.GlideRequestBuilder(imageView, this.f, getActivity()).d();
        } else {
            ImageUtils.a(imageView, this.e, (ColorFilter) null);
        }
    }
}

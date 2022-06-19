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

    /* renamed from: a */
    private CharSequence f27106a;

    /* renamed from: b */
    private CharSequence f27107b;

    /* renamed from: c */
    private String f27108c;

    /* renamed from: d */
    private String f27109d;

    /* renamed from: e */
    private final int f27110e;

    /* renamed from: f */
    private final String f27111f;

    /* renamed from: g */
    private final int f27112g;

    /* renamed from: h */
    private final int f27113h;

    /* renamed from: i */
    private DialogPopup.IDialogOnClickListener f27114i;

    /* renamed from: j */
    private DialogPopup.IDialogOnClickListener f27115j;

    /* renamed from: k */
    private final int f27116k;

    /* renamed from: l */
    private boolean f27117l;

    /* renamed from: m */
    private int f27118m;

    /* renamed from: n */
    private float f27119n;

    /* renamed from: o */
    private float f27120o;

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
        this.f27106a = null;
        this.f27107b = null;
        this.f27108c = null;
        this.f27109d = null;
        this.f27114i = null;
        this.f27115j = null;
        this.f27117l = false;
        this.f27119n = BitmapDescriptorFactory.HUE_RED;
        this.f27120o = BitmapDescriptorFactory.HUE_RED;
        if (charSequence != null) {
            this.f27106a = charSequence;
        }
        if (charSequence2 != null) {
            this.f27107b = charSequence2;
        }
        if (str2 != null) {
            this.f27108c = str2;
        }
        if (str3 != null) {
            this.f27109d = str3;
        }
        this.f27114i = iDialogOnClickListener;
        this.f27115j = iDialogOnClickListener2;
        this.f27110e = i;
        this.f27111f = str;
        this.f27112g = i2;
        this.f27113h = i3;
        this.f27116k = i5;
        this.f27117l = z;
        this.f27118m = i4;
    }

    public DialogMessageWithTopImage(String str, int i, CharSequence charSequence, CharSequence charSequence2, String str2, DialogPopup.IDialogOnClickListener iDialogOnClickListener, String str3, int i2, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this(str, i, 0, 0, charSequence, 2131100140, charSequence2, str2, false, iDialogOnClickListener, str3, i2, iDialogOnClickListener2);
    }

    protected int getLayoutResource() {
        return 2131558617;
    }

    protected CharSequence getMessage() {
        return this.f27107b;
    }

    protected String getNegativeBtnText() {
        return this.f27109d;
    }

    protected DialogPopup.IDialogOnClickListener getNegativeListener() {
        return this.f27115j;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    protected String getPositiveBtnText() {
        return this.f27108c;
    }

    protected DialogPopup.IDialogOnClickListener getPositiveListener() {
        return this.f27114i;
    }

    protected CharSequence getTitle() {
        return this.f27106a;
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

    public void setMessageSize(float f) {
        this.f27119n = f;
    }

    public void setPositiveListener(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        this.f27114i = iDialogOnClickListener;
    }

    protected void setupViews(View view) {
        setupTextViewMember(view, getTitle(), 2131364429, this.f27118m);
        setupTextViewMember(view, getMessage(), 2131364424);
        if (this.f27119n > BitmapDescriptorFactory.HUE_RED) {
            ((TextView) view.findViewById(2131364424)).setTextSize(this.f27119n);
        }
        if (this.f27120o > BitmapDescriptorFactory.HUE_RED) {
            ((TextView) view.findViewById(2131364429)).setTextSize(this.f27120o);
        }
        setupButton(view, getPositiveListener(), 2131362584, getPositiveBtnText(), this.f27117l);
        setupButton(view, getNegativeListener(), 2131362581, getNegativeBtnText(), this.f27116k);
        ImageView imageView = (ImageView) view.findViewById(2131364184);
        ImageUtils.m27529a((ImageView) view.findViewById(2131362069), this.f27112g, (ColorFilter) null);
        ImageUtils.m27529a((ImageView) view.findViewById(2131362070), this.f27113h, (ColorFilter) null);
        if (StringUtils.m26045b((CharSequence) this.f27111f)) {
            new GlideUtils.GlideRequestBuilder(imageView, this.f27111f, getActivity()).m27013d();
        } else {
            ImageUtils.m27529a(imageView, this.f27110e, (ColorFilter) null);
        }
    }
}

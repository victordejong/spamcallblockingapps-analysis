package com.tmobile.services.nameid.p007ui.dialog_fragment;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.TextViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
import com.tmobile.services.nameid.p007ui.dialog_fragment.DialogInfo;
import com.tmobile.services.nameid.utility.LogUtil;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b2\u00103J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J/\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010(\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010\"R\u001c\u0010)\u001a\u00020\u00178\u0014@\u0014X\u0094D¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b0\u0010/R\u0016\u00101\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u0010/¨\u00064"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "Landroid/widget/TextView;", "view", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;", "text", "", "applyText", "(Landroid/widget/TextView;Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo;", Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION, "setDisplayInfo", "(Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo;)V", "textView", "", "minSp", "maxSp", "incSp", "setResizingText", "(Landroid/widget/TextView;III)V", "", "LOG_TAG", "Ljava/lang/String;", "Landroid/widget/ImageView;", "closeButtonView", "Landroid/widget/ImageView;", "Lcom/tmobile/services/nameid/ui/NameIDButton;", "confirmView", "Lcom/tmobile/services/nameid/ui/NameIDButton;", "displayInfo", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo;", "iconView", "layoutResId", "I", "getLayoutResId", "()I", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "messageView", "Lcom/tmobile/services/nameid/ui/NameIDTextView;", "secondaryView", "titleView", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.NameIDDialogFragment */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/NameIDDialogFragment.class */
public class NameIDDialogFragment extends DialogFragment {

    /* renamed from: g */
    private ImageView f13959g;

    /* renamed from: h */
    private ImageView f13960h;

    /* renamed from: i */
    private NameIDTextView f13961i;

    /* renamed from: j */
    private NameIDTextView f13962j;

    /* renamed from: k */
    private NameIDButton f13963k;

    /* renamed from: l */
    private NameIDTextView f13964l;

    /* renamed from: m */
    private DialogInfo f13965m;

    /* renamed from: o */
    private HashMap f13967o;

    /* renamed from: f */
    private final String f13958f = "NameIDDialogFragment#";

    /* renamed from: n */
    private final int f13966n = C1517R.layout.dialog_fragment;

    /* renamed from: H0 */
    public static final /* synthetic */ DialogInfo m6124H0(NameIDDialogFragment nameIDDialogFragment) {
        DialogInfo dialogInfo = nameIDDialogFragment.f13965m;
        if (dialogInfo != null) {
            return dialogInfo;
        }
        Intrinsics.m1814u("displayInfo");
        throw null;
    }

    /* renamed from: J0 */
    private final void m6122J0(TextView textView, DialogInfo.Text text) {
        textView.setVisibility(0);
        if (text instanceof DialogInfo.Text.ResourceId) {
            Resources resources = getResources();
            DialogInfo.Text.ResourceId resourceId = (DialogInfo.Text.ResourceId) text;
            int a = resourceId.m6166a();
            String[] b = resourceId.m6165b();
            textView.setText(resources.getString(a, Arrays.copyOf(b, b.length)));
        } else if (text instanceof DialogInfo.Text.Spanned) {
            DialogInfo.Text.Spanned spanned = (DialogInfo.Text.Spanned) text;
            textView.setText(spanned.m6164a());
            if (spanned.m6163b()) {
                textView.setMovementMethod(LinkMovementMethod.getInstance());
            }
        } else if (text instanceof DialogInfo.Text.StringConstant) {
            textView.setText(((DialogInfo.Text.StringConstant) text).m6162a());
        }
    }

    /* renamed from: M0 */
    private final void m6120M0(TextView textView, int i, int i2, int i3) {
        TextViewCompat.m18825j(textView, i, i2, i3, 2);
    }

    /* renamed from: G0 */
    public void mo6113G0() {
        HashMap hashMap = this.f13967o;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K0 */
    protected int mo6112K0() {
        return this.f13966n;
    }

    /* renamed from: L0 */
    public final void m6121L0(@NotNull DialogInfo display) {
        Intrinsics.m1830e(display, "display");
        this.f13965m = display;
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        View view = inflater.inflate(mo6112K0(), viewGroup, false);
        View findViewById = view.findViewById(C1517R.C1520id.dialog_close_x_button);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.dialog_close_x_button)");
        this.f13960h = (ImageView) findViewById;
        View findViewById2 = view.findViewById(C1517R.C1520id.dialog_fragment_icon);
        Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.dialog_fragment_icon)");
        this.f13959g = (ImageView) findViewById2;
        View findViewById3 = view.findViewById(C1517R.C1520id.dialog_fragment_title);
        Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.dialog_fragment_title)");
        this.f13961i = (NameIDTextView) findViewById3;
        View findViewById4 = view.findViewById(C1517R.C1520id.dialog_fragment_message);
        Intrinsics.m1831d(findViewById4, "view.findViewById(R.id.dialog_fragment_message)");
        this.f13962j = (NameIDTextView) findViewById4;
        View findViewById5 = view.findViewById(C1517R.C1520id.dialog_fragment_confirm);
        Intrinsics.m1831d(findViewById5, "view.findViewById(R.id.dialog_fragment_confirm)");
        this.f13963k = (NameIDButton) findViewById5;
        View findViewById6 = view.findViewById(C1517R.C1520id.dialog_fragment_cancel);
        Intrinsics.m1831d(findViewById6, "view.findViewById(R.id.dialog_fragment_cancel)");
        this.f13964l = (NameIDTextView) findViewById6;
        ImageView imageView = this.f13959g;
        if (imageView != null) {
            imageView.setVisibility(8);
            NameIDTextView nameIDTextView = this.f13961i;
            if (nameIDTextView != null) {
                nameIDTextView.setVisibility(8);
                NameIDTextView nameIDTextView2 = this.f13962j;
                if (nameIDTextView2 != null) {
                    nameIDTextView2.setVisibility(8);
                    NameIDTextView nameIDTextView3 = this.f13964l;
                    if (nameIDTextView3 != null) {
                        nameIDTextView3.setVisibility(8);
                        setCancelable(false);
                        final DialogInfo dialogInfo = this.f13965m;
                        if (dialogInfo == null) {
                            LogUtil.m5643d(this.f13958f, "NameIDDialogBuilder is being shown before DialogInfo is provided. Dismiss!");
                            dismissAllowingStateLoss();
                        } else if (dialogInfo != null) {
                            if (dialogInfo.m6175d() != null) {
                                ImageView imageView2 = this.f13959g;
                                if (imageView2 != null) {
                                    imageView2.setVisibility(0);
                                    ImageView imageView3 = this.f13959g;
                                    if (imageView3 != null) {
                                        imageView3.setImageResource(dialogInfo.m6175d().intValue());
                                    } else {
                                        Intrinsics.m1814u("iconView");
                                        throw null;
                                    }
                                } else {
                                    Intrinsics.m1814u("iconView");
                                    throw null;
                                }
                            }
                            if (dialogInfo.m6168k() != null) {
                                NameIDTextView nameIDTextView4 = this.f13961i;
                                if (nameIDTextView4 != null) {
                                    m6122J0(nameIDTextView4, dialogInfo.m6168k());
                                } else {
                                    Intrinsics.m1814u("titleView");
                                    throw null;
                                }
                            }
                            if (dialogInfo.m6172g()) {
                                NameIDTextView nameIDTextView5 = this.f13961i;
                                if (nameIDTextView5 != null) {
                                    m6120M0(nameIDTextView5, 20, 24, 1);
                                } else {
                                    Intrinsics.m1814u("titleView");
                                    throw null;
                                }
                            }
                            if (dialogInfo.m6174e() != null) {
                                NameIDTextView nameIDTextView6 = this.f13962j;
                                if (nameIDTextView6 != null) {
                                    m6122J0(nameIDTextView6, dialogInfo.m6174e());
                                } else {
                                    Intrinsics.m1814u("messageView");
                                    throw null;
                                }
                            }
                            if (dialogInfo.m6173f()) {
                                NameIDTextView nameIDTextView7 = this.f13962j;
                                if (nameIDTextView7 != null) {
                                    m6120M0(nameIDTextView7, 10, 14, 1);
                                } else {
                                    Intrinsics.m1814u("messageView");
                                    throw null;
                                }
                            }
                            NameIDButton nameIDButton = this.f13963k;
                            if (nameIDButton != null) {
                                m6122J0(nameIDButton, dialogInfo.m6177b());
                                NameIDButton nameIDButton2 = this.f13963k;
                                if (nameIDButton2 != null) {
                                    nameIDButton2.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.dialog_fragment.NameIDDialogFragment$onCreateView$$inlined$run$lambda$1
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view2) {
                                            Function0<Unit> c = DialogInfo.this.m6176c();
                                            if (c != null) {
                                                c.invoke();
                                            }
                                            this.dismissAllowingStateLoss();
                                        }
                                    });
                                    if (dialogInfo.m6171h() != null) {
                                        NameIDTextView nameIDTextView8 = this.f13964l;
                                        if (nameIDTextView8 != null) {
                                            m6122J0(nameIDTextView8, dialogInfo.m6171h());
                                            if (dialogInfo.m6167l()) {
                                                NameIDTextView nameIDTextView9 = this.f13964l;
                                                if (nameIDTextView9 == null) {
                                                    Intrinsics.m1814u("secondaryView");
                                                    throw null;
                                                } else if (nameIDTextView9 != null) {
                                                    nameIDTextView9.setPaintFlags(nameIDTextView9.getPaintFlags() | 8);
                                                } else {
                                                    Intrinsics.m1814u("secondaryView");
                                                    throw null;
                                                }
                                            }
                                            NameIDTextView nameIDTextView10 = this.f13964l;
                                            if (nameIDTextView10 != null) {
                                                nameIDTextView10.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.dialog_fragment.NameIDDialogFragment$onCreateView$$inlined$run$lambda$2
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view2) {
                                                        Function0<Unit> i = DialogInfo.this.m6170i();
                                                        if (i != null) {
                                                            i.invoke();
                                                        }
                                                        this.dismissAllowingStateLoss();
                                                    }
                                                });
                                            } else {
                                                Intrinsics.m1814u("secondaryView");
                                                throw null;
                                            }
                                        } else {
                                            Intrinsics.m1814u("secondaryView");
                                            throw null;
                                        }
                                    }
                                    if (dialogInfo.m6169j()) {
                                        ImageView imageView4 = this.f13960h;
                                        if (imageView4 != null) {
                                            imageView4.setVisibility(0);
                                            ImageView imageView5 = this.f13960h;
                                            if (imageView5 != null) {
                                                imageView5.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.dialog_fragment.NameIDDialogFragment$onCreateView$$inlined$run$lambda$3
                                                    @Override // android.view.View.OnClickListener
                                                    public final void onClick(View view2) {
                                                        Function0<Unit> a = DialogInfo.this.m6178a();
                                                        if (a != null) {
                                                            a.invoke();
                                                        }
                                                        this.dismissAllowingStateLoss();
                                                    }
                                                });
                                            } else {
                                                Intrinsics.m1814u("closeButtonView");
                                                throw null;
                                            }
                                        } else {
                                            Intrinsics.m1814u("closeButtonView");
                                            throw null;
                                        }
                                    } else {
                                        ImageView imageView6 = this.f13960h;
                                        if (imageView6 != null) {
                                            imageView6.setVisibility(8);
                                            ImageView imageView7 = this.f13960h;
                                            if (imageView7 != null) {
                                                imageView7.setOnClickListener(null);
                                                ImageView imageView8 = this.f13960h;
                                                if (imageView8 != null) {
                                                    imageView8.setClickable(false);
                                                } else {
                                                    Intrinsics.m1814u("closeButtonView");
                                                    throw null;
                                                }
                                            } else {
                                                Intrinsics.m1814u("closeButtonView");
                                                throw null;
                                            }
                                        } else {
                                            Intrinsics.m1814u("closeButtonView");
                                            throw null;
                                        }
                                    }
                                } else {
                                    Intrinsics.m1814u("confirmView");
                                    throw null;
                                }
                            } else {
                                Intrinsics.m1814u("confirmView");
                                throw null;
                            }
                        } else {
                            Intrinsics.m1814u("displayInfo");
                            throw null;
                        }
                        Intrinsics.m1831d(view, "view");
                        return view;
                    }
                    Intrinsics.m1814u("secondaryView");
                    throw null;
                }
                Intrinsics.m1814u("messageView");
                throw null;
            }
            Intrinsics.m1814u("titleView");
            throw null;
        }
        Intrinsics.m1814u("iconView");
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo6113G0();
    }
}

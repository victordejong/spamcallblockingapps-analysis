package p193e.p194a.p288a0.p289a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.RadioGroup;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contactfeedback.model.Profile;
import com.truecaller.contactfeedback.p158ui.ErrorConstraintLayout;
import com.truecaller.contactfeedback.p158ui.ManualDropdownDismissSpinner;
import com.truecaller.spamcategories.C4502R;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import e.m.a.g.e.d;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1138q.p1139a.p1140b.AbstractC19375l;
import p193e.p194a.p1138q.p1139a.p1140b.C19374k;
import p193e.p194a.p1138q.p1145i.C19457b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p288a0.AbstractC7384e;
import p193e.p194a.p288a0.AbstractC7385f;
import p193e.p194a.p288a0.AbstractC7386g;
import p193e.p194a.p288a0.C7380b;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.f0.r;
import s1.f0.v;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002¹\u0001B\b¢\u0006\u0005\b¸\u0001\u0010.J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001e\u001a\u00020\u00072\u000e\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010!\u001a\u00020 2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b!\u0010\"J+\u0010(\u001a\u00020'2\u0006\u0010$\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b(\u0010)J!\u0010+\u001a\u00020\u00072\u0006\u0010*\u001a\u00020'2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0007H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u0010.J\u000f\u00100\u001a\u00020\u0007H\u0016¢\u0006\u0004\b0\u0010.J\u000f\u00101\u001a\u00020\u0007H\u0016¢\u0006\u0004\b1\u0010.J\u0017\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u0017\u00108\u001a\u00020\u00072\u0006\u00107\u001a\u000206H\u0017¢\u0006\u0004\b8\u00109J+\u0010>\u001a\u00020\u00072\f\u0010;\u001a\b\u0012\u0004\u0012\u00020:0\u001b2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020<0\u001bH\u0016¢\u0006\u0004\b>\u0010?J\u0017\u0010@\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0007H\u0016¢\u0006\u0004\bB\u0010.J\u0017\u0010E\u001a\u00020\u00072\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0007H\u0016¢\u0006\u0004\bG\u0010.J\u0017\u0010J\u001a\u00020\u00072\u0006\u0010I\u001a\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010L\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\bL\u0010AJ\u0017\u0010M\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\bM\u0010AJ\u0017\u0010N\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\bN\u0010OJ\u0017\u0010P\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\bP\u0010OJ\u0017\u0010R\u001a\u00020\u00072\u0006\u0010Q\u001a\u00020\u0004H\u0016¢\u0006\u0004\bR\u0010OJ\u0017\u0010S\u001a\u00020\u00072\u0006\u0010Q\u001a\u00020\u0004H\u0016¢\u0006\u0004\bS\u0010OJ\u0017\u0010U\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u0004H\u0016¢\u0006\u0004\bU\u0010OR%\u0010[\u001a\n V*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR%\u0010_\u001a\n V*\u0004\u0018\u00010\f0\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010X\u001a\u0004\b]\u0010^R%\u0010c\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010X\u001a\u0004\ba\u0010bR%\u0010f\u001a\n V*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010X\u001a\u0004\be\u0010ZR%\u0010i\u001a\n V*\u0004\u0018\u00010\f0\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bg\u0010X\u001a\u0004\bh\u0010^R%\u0010l\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bj\u0010X\u001a\u0004\bk\u0010bR%\u0010o\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bm\u0010X\u001a\u0004\bn\u0010bR%\u0010t\u001a\n V*\u0004\u0018\u00010p0p8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bq\u0010X\u001a\u0004\br\u0010sR%\u0010w\u001a\n V*\u0004\u0018\u00010p0p8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bu\u0010X\u001a\u0004\bv\u0010sR%\u0010z\u001a\n V*\u0004\u0018\u00010\f0\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bx\u0010X\u001a\u0004\by\u0010^R%\u0010\u0082\u0001\u001a\u00020{8��@��X\u0081.¢\u0006\u0014\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R(\u0010\u0085\u0001\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0083\u0001\u0010X\u001a\u0005\b\u0084\u0001\u0010bR(\u0010\u0088\u0001\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0086\u0001\u0010X\u001a\u0005\b\u0087\u0001\u0010bR(\u0010\u008b\u0001\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0089\u0001\u0010X\u001a\u0005\b\u008a\u0001\u0010bR+\u0010\u0090\u0001\u001a\f V*\u0005\u0018\u00010\u008c\u00010\u008c\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008d\u0001\u0010X\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R+\u0010\u0095\u0001\u001a\f V*\u0005\u0018\u00010\u0091\u00010\u0091\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0092\u0001\u0010X\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R*\u0010\u009d\u0001\u001a\u00030\u0096\u00018��@��X\u0081.¢\u0006\u0018\n\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001\"\u0006\b\u009b\u0001\u0010\u009c\u0001R(\u0010 \u0001\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u009e\u0001\u0010X\u001a\u0005\b\u009f\u0001\u0010bR(\u0010£\u0001\u001a\n V*\u0004\u0018\u00010\f0\f8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b¡\u0001\u0010X\u001a\u0005\b¢\u0001\u0010^R(\u0010¦\u0001\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b¤\u0001\u0010X\u001a\u0005\b¥\u0001\u0010bR(\u0010©\u0001\u001a\n V*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b§\u0001\u0010X\u001a\u0005\b¨\u0001\u0010ZR(\u0010¬\u0001\u001a\n V*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bª\u0001\u0010X\u001a\u0005\b«\u0001\u0010ZR(\u0010¯\u0001\u001a\n V*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u00ad\u0001\u0010X\u001a\u0005\b®\u0001\u0010ZR(\u0010²\u0001\u001a\n V*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b°\u0001\u0010X\u001a\u0005\b±\u0001\u0010bR+\u0010·\u0001\u001a\f V*\u0005\u0018\u00010³\u00010³\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b´\u0001\u0010X\u001a\u0006\bµ\u0001\u0010¶\u0001¨\u0006º\u0001"}, d2 = {"Le/a/a0/a/a;", "Le/m/a/g/e/e;", "Le/a/a0/f;", "Le/a/a0/a/j;", "", "length", "colorAttr", "Ls1/s;", "cB", "(II)V", "Landroid/widget/TextView;", "categoryTextView", "Landroid/widget/ImageView;", "categoryImageView", "Le/a/a0/a/m;", "category", "dB", "(Landroid/widget/TextView;Landroid/widget/ImageView;Le/a/a0/a/m;)V", "categoryPosition", "ZA", "(I)Landroid/widget/ImageView;", "aB", "(I)Landroid/widget/TextView;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "Lcom/truecaller/contactfeedback/model/Profile;", "profiles", "Z3", "(Ljava/util/List;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Xi", "()V", "Dl", "onStop", "onDestroyView", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "", AnalyticsConstants.NAME, "py", "(Ljava/lang/String;)V", "Le/a/a0/a/e;", "mainCategories", "Le/a/a0/a/i;", "otherCategories", "Bn", "(Ljava/util/List;Ljava/util/List;)V", "vn", "(Le/a/a0/a/m;)V", "mu", "", "enableNameFeedback", "c8", "(Z)V", "cancel", "Lcom/truecaller/spamcategories/SpamCategoryResult;", "result", "pd", "(Lcom/truecaller/spamcategories/SpamCategoryResult;)V", "rv", "Dp", "d2", "(I)V", "cb", "resId", "k5", "B5", "max", "p3", "kotlin.jvm.PlatformType", "A", "Ls1/g;", "getWriteCommentVisibility", "()Landroid/view/View;", "writeCommentVisibility", "g", "getOtherCategoryImage", "()Landroid/widget/ImageView;", "otherCategoryImage", "p", "getBottomLeftButton", "()Landroid/widget/TextView;", "bottomLeftButton", "l", "getSpamCategoriesVisibility", "spamCategoriesVisibility", "i", "getSecondCategoryImage", "secondCategoryImage", "j", "getSecondCategoryText", "secondCategoryText", "q", "TA", "bottomRightButton", "Landroid/widget/EditText;", "v", "YA", "()Landroid/widget/EditText;", "suggestNameEditText", "y", "bB", "writeCommentEditText", "e", "getFirstCategoryImage", "firstCategoryImage", "Le/a/a0/a/f;", "C", "Le/a/a0/a/f;", "getPopupMenu$spamcategories_release", "()Le/a/a0/a/f;", "setPopupMenu$spamcategories_release", "(Le/a/a0/a/f;)V", "popupMenu", "h", "getOtherCategoryText", "otherCategoryText", "o", "getTitleChooseSpamCategory", "titleChooseSpamCategory", "t", "UA", "commentBoxLabel", "Landroid/widget/RadioGroup;", "k", "getSpamCategoriesRadioGroup", "()Landroid/widget/RadioGroup;", "spamCategoriesRadioGroup", "Lcom/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner;", "u", "XA", "()Lcom/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner;", "profileNameSpinner", "Le/a/a0/e;", "B", "Le/a/a0/e;", "WA", "()Le/a/a0/e;", "setPresenter$spamcategories_release", "(Le/a/a0/e;)V", "presenter", "f", "getFirstCategoryText", "firstCategoryText", "m", "getThirdCategoryImage", "thirdCategoryImage", "n", "getThirdCategoryText", "thirdCategoryText", "s", "getIncludeLayoutProvideMoreInfo", "includeLayoutProvideMoreInfo", "r", "VA", "includeLayoutChooseSpamType", "w", "getSuggestNameVisibility", "suggestNameVisibility", "x", "getTextInputCounter", "textInputCounter", "Lcom/truecaller/contactfeedback/ui/ErrorConstraintLayout;", "z", "getWriteCommentInputLayout", "()Lcom/truecaller/contactfeedback/ui/ErrorConstraintLayout;", "writeCommentInputLayout", "<init>", C22021b.f61237c, "spamcategories_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a0.a.a */
/* loaded from: classes12-dex2jar.jar:e/a/a0/a/a.class */
public final class C7358a extends AbstractC7370d implements AbstractC7385f, AbstractC7376j {

    /* renamed from: D */
    public static final /* synthetic */ int f23443D = 0;
    @Inject

    /* renamed from: B */
    public AbstractC7384e f23445B;
    @Inject

    /* renamed from: C */
    public AbstractC7372f f23446C;

    /* renamed from: e */
    public final g f23447e = C19286f.m13659t(this, C4502R.C4504id.firstCategoryImage);

    /* renamed from: f */
    public final g f23448f = C19286f.m13659t(this, C4502R.C4504id.firstCategoryText);

    /* renamed from: g */
    public final g f23449g = C19286f.m13659t(this, C4502R.C4504id.otherCategoryImage);

    /* renamed from: h */
    public final g f23450h = C19286f.m13659t(this, C4502R.C4504id.otherCategoryText);

    /* renamed from: i */
    public final g f23451i = C19286f.m13659t(this, C4502R.C4504id.secondCategoryImage);

    /* renamed from: j */
    public final g f23452j = C19286f.m13659t(this, C4502R.C4504id.secondCategoryText);

    /* renamed from: k */
    public final g f23453k = C19286f.m13659t(this, C4502R.C4504id.spamCategoriesRadioGroup);

    /* renamed from: l */
    public final g f23454l = C19286f.m13659t(this, C4502R.C4504id.spamCategoriesVisibility);

    /* renamed from: m */
    public final g f23455m = C19286f.m13659t(this, C4502R.C4504id.thirdCategoryImage);

    /* renamed from: n */
    public final g f23456n = C19286f.m13659t(this, C4502R.C4504id.thirdCategoryText);

    /* renamed from: o */
    public final g f23457o = C19286f.m13659t(this, C4502R.C4504id.titleChooseSpamCategory);

    /* renamed from: p */
    public final g f23458p = C19286f.m13659t(this, C4502R.C4504id.bottomLeftButton);

    /* renamed from: q */
    public final g f23459q = C19286f.m13659t(this, C4502R.C4504id.bottomRightButton);

    /* renamed from: r */
    public final g f23460r = C19286f.m13659t(this, C4502R.C4504id.includeLayoutChooseSpamType);

    /* renamed from: s */
    public final g f23461s = C19286f.m13659t(this, C4502R.C4504id.includeLayoutProvideMoreInfo);

    /* renamed from: t */
    public final g f23462t = C19286f.m13659t(this, C4502R.C4504id.commentBoxLabel);

    /* renamed from: u */
    public final g f23463u = C19286f.m13659t(this, C4502R.C4504id.profileNameSpinner);

    /* renamed from: v */
    public final g f23464v = C19286f.m13659t(this, C4502R.C4504id.suggestNameEditText);

    /* renamed from: w */
    public final g f23465w = C19286f.m13659t(this, C4502R.C4504id.suggestNameVisibility);

    /* renamed from: x */
    public final g f23466x = C19286f.m13659t(this, C4502R.C4504id.textInputCounter);

    /* renamed from: y */
    public final g f23467y = C19286f.m13659t(this, C4502R.C4504id.writeCommentEditText);

    /* renamed from: z */
    public final g f23468z = C19286f.m13659t(this, C4502R.C4504id.writeCommentInputLayout);

    /* renamed from: A */
    public final g f23444A = C19286f.m13659t(this, C4502R.C4504id.writeCommentVisibility);

    /* renamed from: e.a.a0.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a0/a/a$a.class */
    public static final class View$OnClickListenerC7359a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f23469a;

        /* renamed from: b */
        public final /* synthetic */ Object f23470b;

        public View$OnClickListenerC7359a(int i, Object obj) {
            this.f23469a = i;
            this.f23470b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC7386g.C7388b c7388b = AbstractC7386g.C7388b.f23517a;
            int i = this.f23469a;
            if (i == 0) {
                C7380b c7380b = (C7380b) ((C7358a) this.f23470b).m29736WA();
                AbstractC7386g abstractC7386g = c7380b.f23500h;
                if (abstractC7386g == null) {
                    l.l("currentPage");
                    throw null;
                } else if (!l.a(abstractC7386g, AbstractC7386g.C7387a.f23516a)) {
                    if (!l.a(abstractC7386g, c7388b)) {
                        return;
                    }
                    c7380b.m29722Jj();
                } else {
                    c7380b.m29720Lj("CancelClicked");
                    AbstractC7385f abstractC7385f = (AbstractC7385f) c7380b.f57683a;
                    if (abstractC7385f == null) {
                        return;
                    }
                    abstractC7385f.cancel();
                }
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC7384e m29736WA = ((C7358a) this.f23470b).m29736WA();
                RadioGroup radioGroup = (RadioGroup) ((C7358a) this.f23470b).f23453k.getValue();
                l.d(radioGroup, "spamCategoriesRadioGroup");
                boolean z = radioGroup.getCheckedRadioButtonId() == C4502R.C4504id.business;
                String m29740SA = C7358a.m29740SA((C7358a) this.f23470b);
                String m29742QA = C7358a.m29742QA((C7358a) this.f23470b);
                C7380b c7380b2 = (C7380b) m29736WA;
                if (c7380b2.f23509q.mo28660b(m29742QA)) {
                    AbstractC7385f abstractC7385f2 = (AbstractC7385f) c7380b2.f57683a;
                    if (abstractC7385f2 == null) {
                        return;
                    }
                    abstractC7385f2.mo29708k5(C4502R.string.spam_categories_provide_more_info_write_comment_error_message);
                    return;
                }
                AbstractC7379m abstractC7379m = c7380b2.f23497e;
                SpamCategoryResult spamCategoryResult = new SpamCategoryResult(abstractC7379m != null ? Long.valueOf(abstractC7379m.f23492a) : null, m29740SA, z, m29742QA, !(m29742QA == null || r.p(m29742QA)), !(m29740SA == null || r.p(m29740SA)), c7380b2.f23502j);
                c7380b2.f23498f = spamCategoryResult;
                AbstractC7386g abstractC7386g2 = c7380b2.f23500h;
                if (abstractC7386g2 == null) {
                    l.l("currentPage");
                    throw null;
                } else if (abstractC7386g2 instanceof AbstractC7386g.C7387a) {
                    AbstractC7385f abstractC7385f3 = (AbstractC7385f) c7380b2.f57683a;
                    if (abstractC7385f3 != null) {
                        SpamCategoryRequest spamCategoryRequest = c7380b2.f23499g;
                        if (spamCategoryRequest == null) {
                            l.l(RemoteMessageConst.DATA);
                            throw null;
                        }
                        abstractC7385f3.mo29711c8(spamCategoryRequest.f14920b);
                    }
                    c7380b2.f23500h = c7388b;
                } else if (!(abstractC7386g2 instanceof AbstractC7386g.C7388b)) {
                } else {
                    if (m29742QA != null) {
                        long mo13819c = c7380b2.f23510r.mo13819c();
                        SpamCategoryRequest spamCategoryRequest2 = c7380b2.f23499g;
                        if (spamCategoryRequest2 == null) {
                            l.l(RemoteMessageConst.DATA);
                            throw null;
                        }
                        ((C19457b) c7380b2.f23511s).m13310a(C8582g0.m28316d(mo13819c, m29742QA, spamCategoryRequest2.f14921c, spamCategoryResult.f14929g == null, spamCategoryRequest2.f14922d.name()));
                    }
                    c7380b2.m29722Jj();
                }
            }
        }
    }

    /* renamed from: e.a.a0.a.a$b */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/a/a$b.class */
    public final class C7360b implements AbstractC19375l {
        public C7360b() {
            C7358a.this = r4;
        }

        @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19375l
        /* renamed from: a */
        public void mo13394a(Profile profile, int i) {
            ((C7380b) C7358a.this.m29736WA()).f23502j = profile;
            C7358a.this.m29735XA().setSelection(i, true);
            C7358a.this.m29735XA().m35609c();
        }
    }

    /* renamed from: e.a.a0.a.a$c */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/a/a$c.class */
    public static final class C7361c extends d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7361c(Context context, int i) {
            super(context, i);
            C7358a.this = r5;
        }

        public void onBackPressed() {
            C7380b c7380b = (C7380b) C7358a.this.m29736WA();
            AbstractC7386g abstractC7386g = c7380b.f23500h;
            if (abstractC7386g == null) {
                l.l("currentPage");
                throw null;
            } else if (!l.a(abstractC7386g, AbstractC7386g.C7387a.f23516a)) {
                if (!l.a(abstractC7386g, AbstractC7386g.C7388b.f23517a)) {
                    return;
                }
                c7380b.m29722Jj();
            } else {
                c7380b.m29720Lj("CancelClicked");
                AbstractC7385f abstractC7385f = (AbstractC7385f) c7380b.f57683a;
                if (abstractC7385f == null) {
                    return;
                }
                abstractC7385f.cancel();
            }
        }
    }

    /* renamed from: e.a.a0.a.a$d */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/a/a$d.class */
    public static final class C7362d implements TextWatcher {
        public C7362d() {
            C7358a.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            AbstractC7384e m29736WA = C7358a.this.m29736WA();
            ((C7380b) m29736WA).m29718Nj(charSequence != null ? charSequence.toString() : null, C7358a.m29742QA(C7358a.this));
        }
    }

    /* renamed from: e.a.a0.a.a$e */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/a/a$e.class */
    public static final class C7363e implements TextWatcher {
        public C7363e() {
            C7358a.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            ((C7380b) C7358a.this.m29736WA()).m29718Nj(C7358a.m29740SA(C7358a.this), charSequence != null ? charSequence.toString() : null);
        }
    }

    /* renamed from: e.a.a0.a.a$f */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/a/a$f.class */
    public static final class View$OnClickListenerC7364f implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC7379m f23476b;

        public View$OnClickListenerC7364f(AbstractC7379m abstractC7379m) {
            C7358a.this = r4;
            this.f23476b = abstractC7379m;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ((C7380b) C7358a.this.m29736WA()).m29719Mj(this.f23476b);
        }
    }

    /* renamed from: e.a.a0.a.a$g */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/a/a$g.class */
    public static final class RunnableC7365g implements Runnable {
        public RunnableC7365g() {
            C7358a.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C7358a c7358a = C7358a.this;
            int i = C7358a.f23443D;
            TextView m29739TA = c7358a.m29739TA();
            l.d(m29739TA, "bottomRightButton");
            m29739TA.setEnabled(false);
            TextView textView = (TextView) C7358a.this.f23458p.getValue();
            l.d(textView, "bottomLeftButton");
            textView.setText(C7358a.this.getString(C4502R.string.StrSkip));
            TextView m29739TA2 = C7358a.this.m29739TA();
            l.d(m29739TA2, "bottomRightButton");
            m29739TA2.setText(C7358a.this.getString(C4502R.string.StrSubmit));
        }
    }

    /* renamed from: e.a.a0.a.a$h */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/a/a$h.class */
    public static final class RunnableC7366h implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ boolean f23479b;

        public RunnableC7366h(boolean z) {
            C7358a.this = r4;
            this.f23479b = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C7358a.this.isAdded()) {
                C7358a c7358a = C7358a.this;
                int i = C7358a.f23443D;
                View m29737VA = c7358a.m29737VA();
                l.d(m29737VA, "includeLayoutChooseSpamType");
                m29737VA.setVisibility(8);
                View m29741RA = C7358a.m29741RA(C7358a.this);
                l.d(m29741RA, "includeLayoutProvideMoreInfo");
                m29741RA.setAlpha(1.0f);
                View m29741RA2 = C7358a.m29741RA(C7358a.this);
                l.d(m29741RA2, "includeLayoutProvideMoreInfo");
                m29741RA2.setTranslationX(0.0f);
                View m29741RA3 = C7358a.m29741RA(C7358a.this);
                l.d(m29741RA3, "includeLayoutProvideMoreInfo");
                m29741RA3.setVisibility(0);
                View view = (View) C7358a.this.f23465w.getValue();
                l.d(view, "suggestNameVisibility");
                C19286f.m13683U(view, this.f23479b);
            }
        }
    }

    /* renamed from: e.a.a0.a.a$i */
    /* loaded from: classes12-dex2jar.jar:e/a/a0/a/a$i.class */
    public static final class View$OnClickListenerC7367i implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f23481b;

        public View$OnClickListenerC7367i(List list) {
            C7358a.this = r4;
            this.f23481b = list;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (C7358a.this.f23446C == null) {
                l.l("popupMenu");
                throw null;
            }
            l.d(view, "it");
            List<AbstractC7379m> list = this.f23481b;
            C7358a c7358a = C7358a.this;
            l.e(view, "anchorView");
            l.e(list, "otherCategories");
            l.e(c7358a, "clickListener");
            Context context = view.getContext();
            l.d(context, "anchorView.context");
            PopupMenu popupMenu = new PopupMenu(C17422k.m16113E(context, false), view);
            popupMenu.setOnMenuItemClickListener(new C7373g(c7358a, list));
            int i = 0;
            for (AbstractC7379m abstractC7379m : list) {
                popupMenu.getMenu().add(0, (int) abstractC7379m.f23492a, i, abstractC7379m.f23493b);
                i++;
            }
            popupMenu.show();
        }
    }

    /* renamed from: QA */
    public static final String m29742QA(C7358a c7358a) {
        EditText m29731bB = c7358a.m29731bB();
        l.d(m29731bB, "writeCommentEditText");
        Editable text = m29731bB.getText();
        String str = null;
        if (text != null) {
            String obj = text.toString();
            str = null;
            if (obj != null) {
                String obj2 = v.g0(obj).toString();
                str = null;
                if (obj2 != null) {
                    str = r.p(obj2) ? null : obj2;
                }
            }
        }
        return str;
    }

    /* renamed from: RA */
    public static final View m29741RA(C7358a c7358a) {
        return (View) c7358a.f23461s.getValue();
    }

    /* renamed from: SA */
    public static final String m29740SA(C7358a c7358a) {
        EditText m29734YA = c7358a.m29734YA();
        l.d(m29734YA, "suggestNameEditText");
        Editable text = m29734YA.getText();
        String str = null;
        if (text != null) {
            String obj = text.toString();
            str = null;
            if (obj != null) {
                String obj2 = v.g0(obj).toString();
                str = null;
                if (obj2 != null) {
                    str = r.p(obj2) ? null : obj2;
                }
            }
        }
        return str;
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: B5 */
    public void mo29717B5(int i) {
        m29738UA().setTextColor(C19291g.m13612L(requireContext(), C4502R.attr.tcx_textTertiary));
        TextView m29738UA = m29738UA();
        l.d(m29738UA, "commentBoxLabel");
        m29738UA.setText(getResources().getString(i));
        ((ErrorConstraintLayout) this.f23468z.getValue()).setError(false);
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: Bn */
    public void mo29716Bn(List<C7371e> list, List<C7375i> list2) {
        l.e(list, "mainCategories");
        l.e(list2, "otherCategories");
        TextView textView = (TextView) this.f23448f.getValue();
        l.d(textView, "firstCategoryText");
        ImageView imageView = (ImageView) this.f23447e.getValue();
        l.d(imageView, "firstCategoryImage");
        m29729dB(textView, imageView, list.get(0));
        TextView textView2 = (TextView) this.f23452j.getValue();
        l.d(textView2, "secondCategoryText");
        ImageView imageView2 = (ImageView) this.f23451i.getValue();
        l.d(imageView2, "secondCategoryImage");
        m29729dB(textView2, imageView2, list.get(1));
        TextView textView3 = (TextView) this.f23456n.getValue();
        l.d(textView3, "thirdCategoryText");
        ImageView imageView3 = (ImageView) this.f23455m.getValue();
        l.d(imageView3, "thirdCategoryImage");
        m29729dB(textView3, imageView3, list.get(2));
        ((ImageView) this.f23449g.getValue()).setOnClickListener(new View$OnClickListenerC7367i(list2));
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: Dl */
    public void mo29715Dl() {
        TextView m29739TA = m29739TA();
        l.d(m29739TA, "bottomRightButton");
        m29739TA.setEnabled(true);
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: Dp */
    public void mo29714Dp(AbstractC7379m abstractC7379m) {
        l.e(abstractC7379m, "category");
        ImageView m29733ZA = m29733ZA(abstractC7379m.f23495d);
        TextView m29732aB = m29732aB(abstractC7379m.f23495d);
        m29733ZA.setColorFilter(C19291g.m13612L(requireContext(), C4502R.attr.tcx_brandBackgroundBlue), PorterDuff.Mode.SRC_IN);
        m29733ZA.setBackgroundResource(C4502R.C4503drawable.category_icon_linear_border);
        if (abstractC7379m instanceof C7375i) {
            m29732aB.setText(C4502R.string.StrOther);
        }
    }

    /* renamed from: TA */
    public final TextView m29739TA() {
        return (TextView) this.f23459q.getValue();
    }

    /* renamed from: UA */
    public final TextView m29738UA() {
        return (TextView) this.f23462t.getValue();
    }

    /* renamed from: VA */
    public final View m29737VA() {
        return (View) this.f23460r.getValue();
    }

    /* renamed from: WA */
    public final AbstractC7384e m29736WA() {
        AbstractC7384e abstractC7384e = this.f23445B;
        if (abstractC7384e != null) {
            return abstractC7384e;
        }
        l.l("presenter");
        throw null;
    }

    /* renamed from: XA */
    public final ManualDropdownDismissSpinner m29735XA() {
        return (ManualDropdownDismissSpinner) this.f23463u.getValue();
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: Xi */
    public void mo29713Xi() {
        TextView m29739TA = m29739TA();
        l.d(m29739TA, "bottomRightButton");
        m29739TA.setEnabled(false);
    }

    /* renamed from: YA */
    public final EditText m29734YA() {
        return (EditText) this.f23464v.getValue();
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: Z3 */
    public void mo29712Z3(List<Profile> list) {
        l.e(list, "profiles");
        C7360b c7360b = new C7360b();
        ManualDropdownDismissSpinner m29735XA = m29735XA();
        l.d(m29735XA, "profileNameSpinner");
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        m29735XA.setAdapter((SpinnerAdapter) new C19374k(requireContext, list, c7360b));
        m29735XA().setSelection(0);
    }

    /* renamed from: ZA */
    public final ImageView m29733ZA(int i) {
        ImageView imageView;
        if (i == 0) {
            imageView = (ImageView) this.f23447e.getValue();
            l.d(imageView, "firstCategoryImage");
        } else if (i == 1) {
            imageView = (ImageView) this.f23451i.getValue();
            l.d(imageView, "secondCategoryImage");
        } else if (i != 2) {
            imageView = (ImageView) this.f23449g.getValue();
            l.d(imageView, "otherCategoryImage");
        } else {
            imageView = (ImageView) this.f23455m.getValue();
            l.d(imageView, "thirdCategoryImage");
        }
        return imageView;
    }

    /* renamed from: aB */
    public final TextView m29732aB(int i) {
        TextView textView;
        if (i == 0) {
            textView = (TextView) this.f23448f.getValue();
            l.d(textView, "firstCategoryText");
        } else if (i == 1) {
            textView = (TextView) this.f23452j.getValue();
            l.d(textView, "secondCategoryText");
        } else if (i != 2) {
            textView = (TextView) this.f23450h.getValue();
            l.d(textView, "otherCategoryText");
        } else {
            textView = (TextView) this.f23456n.getValue();
            l.d(textView, "thirdCategoryText");
        }
        return textView;
    }

    /* renamed from: bB */
    public final EditText m29731bB() {
        return (EditText) this.f23467y.getValue();
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: c8 */
    public void mo29711c8(boolean z) {
        ViewPropertyAnimator animate = m29737VA().animate();
        View m29737VA = m29737VA();
        l.d(m29737VA, "includeLayoutChooseSpamType");
        animate.translationX(-m29737VA.getWidth()).alpha(0.0f).withStartAction(new RunnableC7365g()).withEndAction(new RunnableC7366h(z));
    }

    /* renamed from: cB */
    public final void m29730cB(int i, int i2) {
        TextView textView = (TextView) this.f23466x.getValue();
        l.d(textView, "textInputCounter");
        textView.setText(String.valueOf(i));
        ((TextView) this.f23466x.getValue()).setTextColor(C19291g.m13612L(requireContext(), i2));
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    public void cancel() {
        requireActivity().finish();
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: cb */
    public void mo29710cb(int i) {
        m29730cB(i, C4502R.attr.tcx_brandBackgroundBlue);
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: d2 */
    public void mo29709d2(int i) {
        m29730cB(i, C4502R.attr.tcx_alertBackgroundRed);
    }

    /* renamed from: dB */
    public final void m29729dB(TextView textView, ImageView imageView, AbstractC7379m abstractC7379m) {
        textView.setText(abstractC7379m.f23493b);
        String str = abstractC7379m.f23494c;
        if (str != null) {
            C22234h mo8414k = C17891a1.C17902k.m15664K1(imageView.getContext()).mo8414k();
            C21852d c21852d = (C21852d) mo8414k;
            c21852d.f61767J = str;
            c21852d.f61771N = true;
            l.d(((C21852d) mo8414k).m8427O(imageView), "GlideApp.with(imageView.…         .into(imageView)");
        } else {
            Context context = imageView.getContext();
            int i = C4502R.C4503drawable.ic_more;
            Object obj = C26467a.f74235a;
            imageView.setImageDrawable(C26467a.C26470c.m1789b(context, i));
        }
        imageView.setOnClickListener(new View$OnClickListenerC7364f(abstractC7379m));
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: k5 */
    public void mo29708k5(int i) {
        m29738UA().setTextColor(C19291g.m13612L(requireContext(), C4502R.attr.tcx_alertBackgroundRed));
        TextView m29738UA = m29738UA();
        l.d(m29738UA, "commentBoxLabel");
        m29738UA.setText(getResources().getString(i));
        ((ErrorConstraintLayout) this.f23468z.getValue()).setError(true);
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: mu */
    public void mo29707mu() {
        View view = (View) this.f23454l.getValue();
        l.d(view, "spamCategoriesVisibility");
        view.setVisibility(8);
    }

    public void onCreate(Bundle bundle) {
        C7358a.super.onCreate(bundle);
        setStyle(0, C4502R.style.SpamCategoriesBottomSheetStyle);
        Bundle arguments = getArguments();
        SpamCategoryRequest spamCategoryRequest = arguments != null ? (SpamCategoryRequest) arguments.getParcelable("request") : null;
        if (spamCategoryRequest != null) {
            AbstractC7384e abstractC7384e = this.f23445B;
            if (abstractC7384e == null) {
                l.l("presenter");
                throw null;
            }
            C7380b c7380b = (C7380b) abstractC7384e;
            Objects.requireNonNull(c7380b);
            l.e(spamCategoryRequest, "request");
            c7380b.f23499g = spamCategoryRequest;
            c7380b.f23500h = AbstractC7386g.C7387a.f23516a;
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.app.Dialog, e.a.a0.a.a$c] */
    public Dialog onCreateDialog(Bundle bundle) {
        return new C7361c(requireContext(), getTheme());
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4502R.layout.fragment_spam_categories_bottom_sheet, viewGroup, false);
        l.d(inflate, "inflater.toThemeInflater…_sheet, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        AbstractC7384e abstractC7384e = this.f23445B;
        Boolean bool = null;
        if (abstractC7384e == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC7384e).mo9806c();
        C7358a.super.onDestroyView();
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            bool = Boolean.valueOf(activity.isFinishing());
        }
        l.a(bool, Boolean.FALSE);
        n3.r.a.l activity2 = getActivity();
        if (activity2 == null) {
            return;
        }
        activity2.finish();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        AbstractC7384e abstractC7384e = this.f23445B;
        if (abstractC7384e == null) {
            l.l("presenter");
            throw null;
        }
        C7380b c7380b = (C7380b) abstractC7384e;
        AbstractC7386g abstractC7386g = c7380b.f23500h;
        if (abstractC7386g == null) {
            l.l("currentPage");
            throw null;
        }
        if (l.a(abstractC7386g, AbstractC7386g.C7388b.f23517a)) {
            c7380b.m29722Jj();
            SpamCategoryResult m29723Ij = c7380b.m29723Ij();
            AbstractC19462a abstractC19462a = c7380b.f23507o;
            AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("ContactBlocked");
            c19504b.m13263d("ViewInteraction", "BlockClicked");
            c19504b.m13262e("HasNameSuggestion", m29723Ij.f14928f);
            c19504b.m13262e("ContainsComment", m29723Ij.f14927e);
            c19504b.m13262e("HasCategory", m29723Ij.f14923a != null);
            c19504b.m13263d("CategoryId", String.valueOf(m29723Ij.f14923a));
            c19504b.m13263d("EntityType", m29723Ij.f14925c ? "Business" : "Person");
            AbstractC19502g m13266a = c19504b.m13266a();
            l.d(m13266a, "AnalyticsEvent.Builder(A…\n                .build()");
            abstractC19462a.mo13271e(m13266a);
            if (m29723Ij.f14927e) {
                C22128a.m8711G0("CommentPosted", null, C22128a.m8667T("Source", "Blocking"), null, "AnalyticsEvent.Builder(A…                 .build()", c7380b.f23507o);
            }
        }
        C7358a.super.onDismiss(dialogInterface);
    }

    public void onStop() {
        AbstractC7384e abstractC7384e = this.f23445B;
        if (abstractC7384e == null) {
            l.l("presenter");
            throw null;
        }
        C7380b c7380b = (C7380b) abstractC7384e;
        AbstractC7386g abstractC7386g = c7380b.f23500h;
        if (abstractC7386g == null) {
            l.l("currentPage");
            throw null;
        }
        if (l.a(abstractC7386g, AbstractC7386g.C7388b.f23517a)) {
            c7380b.m29722Jj();
        }
        C7358a.super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7358a.super.onViewCreated(view, bundle);
        ((TextView) this.f23458p.getValue()).setOnClickListener(new View$OnClickListenerC7359a(0, this));
        m29739TA().setOnClickListener(new View$OnClickListenerC7359a(1, this));
        EditText m29734YA = m29734YA();
        l.d(m29734YA, "suggestNameEditText");
        C19291g.m13500x(m29734YA);
        m29734YA().addTextChangedListener(new C7362d());
        EditText m29731bB = m29731bB();
        l.d(m29731bB, "writeCommentEditText");
        C19291g.m13500x(m29731bB);
        m29731bB().addTextChangedListener(new C7363e());
        AbstractC7384e abstractC7384e = this.f23445B;
        if (abstractC7384e != null) {
            ((C7380b) abstractC7384e).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: p3 */
    public void mo29706p3(int i) {
        EditText m29731bB = m29731bB();
        l.d(m29731bB, "writeCommentEditText");
        m29731bB.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i)});
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: pd */
    public void mo29705pd(SpamCategoryResult spamCategoryResult) {
        l.e(spamCategoryResult, "result");
        n3.r.a.l requireActivity = requireActivity();
        requireActivity.setResult(-1, new Intent().putExtra("result", spamCategoryResult));
        requireActivity.finish();
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: py */
    public void mo29704py(String str) {
        l.e(str, AnalyticsConstants.NAME);
        TextView textView = (TextView) this.f23457o.getValue();
        l.d(textView, "titleChooseSpamCategory");
        textView.setText(getResources().getString(C4502R.string.spam_categories_page_title_default, str));
    }

    @Override // p193e.p194a.p288a0.AbstractC7385f
    /* renamed from: rv */
    public void mo29703rv(AbstractC7379m abstractC7379m) {
        l.e(abstractC7379m, "category");
        ImageView m29733ZA = m29733ZA(abstractC7379m.f23495d);
        TextView m29732aB = m29732aB(abstractC7379m.f23495d);
        m29733ZA.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
        m29733ZA.setBackgroundResource(C4502R.C4503drawable.category_icon_round_background);
        m29732aB.setText(abstractC7379m.f23493b);
    }

    @Override // p193e.p194a.p288a0.p289a.AbstractC7376j
    /* renamed from: vn */
    public void mo29724vn(AbstractC7379m abstractC7379m) {
        l.e(abstractC7379m, "category");
        AbstractC7384e abstractC7384e = this.f23445B;
        if (abstractC7384e != null) {
            ((C7380b) abstractC7384e).m29719Mj(abstractC7379m);
        } else {
            l.l("presenter");
            throw null;
        }
    }
}

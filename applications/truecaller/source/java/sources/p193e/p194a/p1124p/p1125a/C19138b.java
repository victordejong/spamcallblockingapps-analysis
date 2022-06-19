package p193e.p194a.p1124p.p1125a;

import android.app.DatePickerDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.newBusiness.onboarding.p149ui.OnboardingIntroActivity;
import com.truecaller.bizmon.p152ui.profile.BusinessProfileOnboardingActivity;
import com.truecaller.editprofile.C3890R;
import com.truecaller.editprofile.p164ui.EditProfileLaunchContext;
import com.truecaller.editprofile.p164ui.EditProfileMvp$View;
import com.truecaller.editprofile.p164ui.ErrorField;
import com.truecaller.editprofile.p164ui.Gender;
import com.truecaller.social_login.facebook.FacebookLoginActivity;
import com.truecaller.social_login.google.GoogleLoginActivity;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import e.f.a.r.k.c;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1818g.C26536a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1124p.AbstractC19200k;
import p193e.p194a.p1124p.p1125a.C19135a;
import p193e.p194a.p1124p.p1125a.C19147c;
import p193e.p194a.p1124p.p1125a.C19150d;
import p193e.p194a.p1124p.p1125a.C19153e;
import p193e.p194a.p1124p.p1125a.C19156f;
import p193e.p194a.p1124p.p1125a.C19160g;
import p193e.p194a.p1124p.p1125a.C19164h;
import p193e.p194a.p1124p.p1125a.C19172m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p406e.C8415b;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8612s;
import p193e.p194a.p947k.AbstractC16111h;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.k;
import s1.s;
import s1.u.i;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.a0;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¬\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\nB\b¢\u0006\u0005\b\u0082\u0003\u0010*J+\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0013\u0010\u001e\u001a\u00020\u000b*\u00020\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010#\u001a\u00020 *\u00020 2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010'\u001a\u00020\u000f2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u000fH\u0016¢\u0006\u0004\b)\u0010*J-\u0010/\u001a\u0004\u0018\u00010\u000e2\u0006\u0010,\u001a\u00020+2\b\u0010.\u001a\u0004\u0018\u00010-2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b/\u00100J!\u00101\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000e2\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b1\u00102J)\u00107\u001a\u00020\u000f2\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u0002032\b\u00106\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b7\u00108J-\u0010=\u001a\u00020\u000f2\u0006\u00104\u001a\u0002032\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u000b092\u0006\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u000fH\u0016¢\u0006\u0004\b?\u0010*J\u000f\u0010@\u001a\u00020\u000fH\u0016¢\u0006\u0004\b@\u0010*J\u000f\u0010A\u001a\u00020\u000fH\u0016¢\u0006\u0004\bA\u0010*J\u000f\u0010B\u001a\u00020\u000fH\u0016¢\u0006\u0004\bB\u0010*J\u000f\u0010C\u001a\u00020\u000fH\u0016¢\u0006\u0004\bC\u0010*J\u000f\u0010D\u001a\u00020\u000fH\u0016¢\u0006\u0004\bD\u0010*J\u0017\u0010F\u001a\u00020\u000f2\u0006\u0010E\u001a\u00020\u000bH\u0016¢\u0006\u0004\bF\u0010GJ\u0017\u0010I\u001a\u00020\u000f2\u0006\u0010H\u001a\u00020\u000bH\u0016¢\u0006\u0004\bI\u0010GJ\u0017\u0010L\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020JH\u0016¢\u0006\u0004\bL\u0010MJ\u0017\u0010O\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000bH\u0016¢\u0006\u0004\bO\u0010GJ\u0017\u0010R\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020PH\u0016¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u000fH\u0016¢\u0006\u0004\bT\u0010*J\u0017\u0010U\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020JH\u0016¢\u0006\u0004\bU\u0010MJ\u0017\u0010W\u001a\u00020\u000f2\u0006\u0010V\u001a\u00020\u000bH\u0016¢\u0006\u0004\bW\u0010GJ\u0017\u0010Y\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\u000bH\u0016¢\u0006\u0004\bY\u0010GJ\u0017\u0010[\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020\u000bH\u0016¢\u0006\u0004\b[\u0010GJ\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\\\u001a\u00020\u000bH\u0016¢\u0006\u0004\b]\u0010GJ\u001f\u0010`\u001a\u00020\u000f2\u0006\u0010^\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u0019H\u0016¢\u0006\u0004\b`\u0010aJ\u000f\u0010b\u001a\u00020\u000fH\u0016¢\u0006\u0004\bb\u0010*J\u0017\u0010d\u001a\u00020\u000f2\u0006\u0010c\u001a\u00020\u000bH\u0016¢\u0006\u0004\bd\u0010GJ\u0017\u0010f\u001a\u00020\u000f2\u0006\u0010e\u001a\u00020\u000bH\u0016¢\u0006\u0004\bf\u0010GJ\u0017\u0010h\u001a\u00020\u000f2\u0006\u0010g\u001a\u00020\u000bH\u0016¢\u0006\u0004\bh\u0010GJ\u0017\u0010j\u001a\u00020\u000f2\u0006\u0010i\u001a\u00020\u000bH\u0016¢\u0006\u0004\bj\u0010GJ\u0017\u0010l\u001a\u00020\u000f2\u0006\u0010k\u001a\u00020\u000bH\u0016¢\u0006\u0004\bl\u0010GJ\u0017\u0010n\u001a\u00020\u000f2\u0006\u0010m\u001a\u00020\u000bH\u0016¢\u0006\u0004\bn\u0010GJ\u0017\u0010p\u001a\u00020\u000f2\u0006\u0010o\u001a\u00020\u000bH\u0016¢\u0006\u0004\bp\u0010GJ\u0017\u0010r\u001a\u00020\u000f2\u0006\u0010q\u001a\u00020\u000bH\u0016¢\u0006\u0004\br\u0010GJ\u0017\u0010t\u001a\u00020\u000f2\u0006\u0010s\u001a\u00020\u000bH\u0016¢\u0006\u0004\bt\u0010GJ!\u0010w\u001a\u00020\u000f2\u0006\u0010u\u001a\u00020\u000b2\b\u0010v\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\bw\u0010xJ\u000f\u0010y\u001a\u00020\u000fH\u0016¢\u0006\u0004\by\u0010*J0\u0010\u007f\u001a\u00020\u000f2\u0006\u0010z\u001a\u0002032\u0006\u0010{\u001a\u0002032\u0006\u0010|\u001a\u0002032\u0006\u0010~\u001a\u00020}H\u0016¢\u0006\u0005\b\u007f\u0010\u0080\u0001J!\u0010\u0081\u0001\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0005\b\u0081\u0001\u0010aJ5\u0010\u0083\u0001\u001a\u00020\u000f2\t\u0010\u0014\u001a\u0005\u0018\u00010\u0082\u00012\u0006\u0010z\u001a\u0002032\u0006\u0010{\u001a\u0002032\u0006\u0010|\u001a\u000203H\u0016¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u0011\u0010\u0085\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u0085\u0001\u0010*J\u001b\u0010\u0087\u0001\u001a\u00020\u000f2\u0007\u0010c\u001a\u00030\u0086\u0001H\u0016¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u001d\u0010\u008a\u0001\u001a\u00020\u000f2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010}H\u0016¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\u0011\u0010\u008c\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u008c\u0001\u0010*J\u0011\u0010\u008d\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u008d\u0001\u0010*J\u0011\u0010\u008e\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u008e\u0001\u0010*J\u0011\u0010\u008f\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u008f\u0001\u0010*J\u0011\u0010\u0090\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u0090\u0001\u0010*J\u0011\u0010\u0091\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u0091\u0001\u0010*J\u001a\u0010\u0093\u0001\u001a\u00020\u000f2\u0007\u0010\u0092\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b\u0093\u0001\u0010GJ\u001a\u0010\u0095\u0001\u001a\u00020\u000f2\u0007\u0010\u0094\u0001\u001a\u00020PH\u0016¢\u0006\u0005\b\u0095\u0001\u0010SJ\u001b\u0010\u0096\u0001\u001a\u00020J2\u0007\u0010\u0092\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J#\u0010\u0098\u0001\u001a\u00020\u000f2\u0007\u0010\u0092\u0001\u001a\u00020\u000b2\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u0099\u0001J\u001a\u0010\u009b\u0001\u001a\u00020\u000f2\u0007\u0010\u009a\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b\u009b\u0001\u0010GJ\u0011\u0010\u009c\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u009c\u0001\u0010*J\u0011\u0010\u009d\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u009d\u0001\u0010*J\u0011\u0010\u009e\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u009e\u0001\u0010*J\u0011\u0010\u009f\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u009f\u0001\u0010*J\u0011\u0010 \u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b \u0001\u0010*J\u0011\u0010¡\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b¡\u0001\u0010*J\u0019\u0010¢\u0001\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020JH\u0016¢\u0006\u0005\b¢\u0001\u0010MJ\u001a\u0010¤\u0001\u001a\u00020\u000f2\u0007\u0010£\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b¤\u0001\u0010GJ\u001a\u0010¦\u0001\u001a\u00020\u000f2\u0007\u0010¥\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b¦\u0001\u0010GJ\u001b\u0010¨\u0001\u001a\u00020\u000f2\u0007\u0010§\u0001\u001a\u00020 H\u0016¢\u0006\u0006\b¨\u0001\u0010©\u0001J%\u0010«\u0001\u001a\u00020\u000f2\t\b\u0001\u0010ª\u0001\u001a\u0002032\u0006\u0010Z\u001a\u00020\u000bH\u0016¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b\u00ad\u0001\u0010*J%\u0010®\u0001\u001a\u00020\u000f2\t\b\u0001\u0010ª\u0001\u001a\u0002032\u0006\u0010Z\u001a\u00020\u000bH\u0016¢\u0006\u0006\b®\u0001\u0010¬\u0001J,\u0010¯\u0001\u001a\u00020\u000f2\u0007\u0010ª\u0001\u001a\u0002032\u0006\u0010Z\u001a\u00020\u000b2\u0007\u0010£\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0006\b¯\u0001\u0010°\u0001J\u0011\u0010±\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b±\u0001\u0010*J\u001a\u0010³\u0001\u001a\u00020\u000f2\u0007\u0010²\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b³\u0001\u0010GJ\u0011\u0010´\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b´\u0001\u0010*J\u001a\u0010µ\u0001\u001a\u00020\u000f2\u0007\u0010²\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\bµ\u0001\u0010GJ\u0011\u0010¶\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b¶\u0001\u0010*J\u001a\u0010·\u0001\u001a\u00020\u000f2\u0007\u0010²\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b·\u0001\u0010GJ\u0011\u0010¸\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b¸\u0001\u0010*J\u001c\u0010»\u0001\u001a\u00020\u000f2\b\u0010º\u0001\u001a\u00030¹\u0001H\u0016¢\u0006\u0006\b»\u0001\u0010¼\u0001J\u001a\u0010½\u0001\u001a\u00020\u000f2\u0007\u0010ª\u0001\u001a\u00020\u000bH\u0016¢\u0006\u0005\b½\u0001\u0010GJ\u0011\u0010¾\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b¾\u0001\u0010*J\u0011\u0010¿\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\b¿\u0001\u0010*J%\u0010Ã\u0001\u001a\u00020\u000f2\u0007\u0010À\u0001\u001a\u0002032\b\u0010Â\u0001\u001a\u00030Á\u0001H\u0016¢\u0006\u0006\bÃ\u0001\u0010Ä\u0001J\u0011\u0010Å\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÅ\u0001\u0010*J\u0011\u0010Æ\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÆ\u0001\u0010*J\u0011\u0010Ç\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÇ\u0001\u0010*J\u0011\u0010È\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÈ\u0001\u0010*J\u0011\u0010É\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÉ\u0001\u0010*J\u0019\u0010Ê\u0001\u001a\u00020\u000f2\u0006\u0010K\u001a\u00020JH\u0016¢\u0006\u0005\bÊ\u0001\u0010MJ\u0011\u0010Ë\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bË\u0001\u0010*J\u0011\u0010Ì\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÌ\u0001\u0010*J\u0011\u0010Í\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÍ\u0001\u0010*J\u0011\u0010Î\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÎ\u0001\u0010*J\u0011\u0010Ï\u0001\u001a\u00020\u000fH\u0016¢\u0006\u0005\bÏ\u0001\u0010*J\u000f\u0010Ð\u0001\u001a\u00020\u000f¢\u0006\u0005\bÐ\u0001\u0010*R-\u0010×\u0001\u001a\r Ò\u0001*\u0005\u0018\u00010Ñ\u00010Ñ\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÓ\u0001\u0010Ô\u0001\u001a\u0006\bÕ\u0001\u0010Ö\u0001R+\u0010Û\u0001\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bØ\u0001\u0010Ô\u0001\u001a\u0006\bÙ\u0001\u0010Ú\u0001R-\u0010à\u0001\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÝ\u0001\u0010Ô\u0001\u001a\u0006\bÞ\u0001\u0010ß\u0001R+\u0010ä\u0001\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bá\u0001\u0010Ô\u0001\u001a\u0006\bâ\u0001\u0010ã\u0001R-\u0010é\u0001\u001a\r Ò\u0001*\u0005\u0018\u00010å\u00010å\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bæ\u0001\u0010Ô\u0001\u001a\u0006\bç\u0001\u0010è\u0001R+\u0010ì\u0001\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bê\u0001\u0010Ô\u0001\u001a\u0006\bë\u0001\u0010Ú\u0001R\u0018\u0010m\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bí\u0001\u0010î\u0001R+\u0010ñ\u0001\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bï\u0001\u0010Ô\u0001\u001a\u0006\bð\u0001\u0010ã\u0001R\u0018\u0010e\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bò\u0001\u0010î\u0001R-\u0010õ\u0001\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bó\u0001\u0010Ô\u0001\u001a\u0006\bô\u0001\u0010ß\u0001R-\u0010÷\u0001\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b½\u0001\u0010Ô\u0001\u001a\u0006\bö\u0001\u0010ß\u0001R+\u0010ú\u0001\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bø\u0001\u0010Ô\u0001\u001a\u0006\bù\u0001\u0010Ú\u0001R-\u0010ÿ\u0001\u001a\r Ò\u0001*\u0005\u0018\u00010û\u00010û\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bü\u0001\u0010Ô\u0001\u001a\u0006\bý\u0001\u0010þ\u0001R-\u0010\u0082\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010å\u00010å\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0080\u0002\u0010Ô\u0001\u001a\u0006\b\u0081\u0002\u0010è\u0001R+\u0010\u0085\u0002\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0083\u0002\u0010Ô\u0001\u001a\u0006\b\u0084\u0002\u0010Ú\u0001R-\u0010\u0088\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0086\u0002\u0010Ô\u0001\u001a\u0006\b\u0087\u0002\u0010ß\u0001R,\u0010\u008a\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bF\u0010Ô\u0001\u001a\u0006\b\u0089\u0002\u0010ß\u0001R-\u0010\u008f\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010\u008b\u00020\u008b\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u008c\u0002\u0010Ô\u0001\u001a\u0006\b\u008d\u0002\u0010\u008e\u0002R\u0018\u0010s\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\b\u0090\u0002\u0010î\u0001R-\u0010\u0093\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0091\u0002\u0010Ô\u0001\u001a\u0006\b\u0092\u0002\u0010ß\u0001R\u0018\u0010q\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\b\u0094\u0002\u0010î\u0001R%\u0010\u0097\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r8\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0095\u0002\u0010\u0096\u0002R*\u0010\u009f\u0002\u001a\u00030\u0098\u00028\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0099\u0002\u0010\u009a\u0002\u001a\u0006\b\u009b\u0002\u0010\u009c\u0002\"\u0006\b\u009d\u0002\u0010\u009e\u0002R+\u0010¢\u0002\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b \u0002\u0010Ô\u0001\u001a\u0006\b¡\u0002\u0010ã\u0001R*\u0010ª\u0002\u001a\u00030£\u00028��@��X\u0081.¢\u0006\u0018\n\u0006\b¤\u0002\u0010¥\u0002\u001a\u0006\b¦\u0002\u0010§\u0002\"\u0006\b¨\u0002\u0010©\u0002R-\u0010\u00ad\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b«\u0002\u0010Ô\u0001\u001a\u0006\b¬\u0002\u0010ß\u0001R+\u0010°\u0002\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b®\u0002\u0010Ô\u0001\u001a\u0006\b¯\u0002\u0010ã\u0001R-\u0010³\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b±\u0002\u0010Ô\u0001\u001a\u0006\b²\u0002\u0010ß\u0001R-\u0010¶\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b´\u0002\u0010Ô\u0001\u001a\u0006\bµ\u0002\u0010ß\u0001R-\u0010¹\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b·\u0002\u0010Ô\u0001\u001a\u0006\b¸\u0002\u0010ß\u0001R,\u0010Á\u0002\u001a\u0005\u0018\u00010º\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b»\u0002\u0010¼\u0002\u001a\u0006\b½\u0002\u0010¾\u0002\"\u0006\b¿\u0002\u0010À\u0002R\u0018\u0010\\\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bÂ\u0002\u0010î\u0001R+\u0010Å\u0002\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÃ\u0002\u0010Ô\u0001\u001a\u0006\bÄ\u0002\u0010ã\u0001R\u0018\u0010X\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bÆ\u0002\u0010î\u0001R1\u0010Ï\u0002\u001a\u00030Ç\u00028\u0006@\u0006X\u0087.¢\u0006\u001f\n\u0006\bÈ\u0002\u0010É\u0002\u0012\u0005\bÎ\u0002\u0010*\u001a\u0006\bÊ\u0002\u0010Ë\u0002\"\u0006\bÌ\u0002\u0010Í\u0002R\u0019\u0010Ò\u0002\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÐ\u0002\u0010Ñ\u0002R\u0018\u0010g\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bÓ\u0002\u0010î\u0001R+\u0010Ö\u0002\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÔ\u0002\u0010Ô\u0001\u001a\u0006\bÕ\u0002\u0010ã\u0001R*\u0010Ø\u0002\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bR\u0010Ô\u0001\u001a\u0006\b×\u0002\u0010ã\u0001R+\u0010Û\u0002\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÙ\u0002\u0010Ô\u0001\u001a\u0006\bÚ\u0002\u0010ã\u0001R-\u0010à\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00020Ü\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÝ\u0002\u0010Ô\u0001\u001a\u0006\bÞ\u0002\u0010ß\u0002R\u0018\u0010o\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bá\u0002\u0010î\u0001R-\u0010ã\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0096\u0001\u0010Ô\u0001\u001a\u0006\bâ\u0002\u0010ß\u0001R-\u0010æ\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bä\u0002\u0010Ô\u0001\u001a\u0006\bå\u0002\u0010ß\u0001R-\u0010é\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bç\u0002\u0010Ô\u0001\u001a\u0006\bè\u0002\u0010ß\u0001R+\u0010ì\u0002\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u00130\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bê\u0002\u0010Ô\u0001\u001a\u0006\bë\u0002\u0010Ú\u0001R\u0018\u0010i\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bí\u0002\u0010î\u0001R'\u0010ò\u0002\u001a\u0010\u0012\u0005\u0012\u00030ï\u0002\u0012\u0004\u0012\u0002030î\u00028\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\bð\u0002\u0010ñ\u0002R-\u0010õ\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bó\u0002\u0010Ô\u0001\u001a\u0006\bô\u0002\u0010ß\u0001R-\u0010ø\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bö\u0002\u0010Ô\u0001\u001a\u0006\b÷\u0002\u0010ß\u0001R-\u0010û\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010å\u00010å\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bù\u0002\u0010Ô\u0001\u001a\u0006\bú\u0002\u0010è\u0001R-\u0010ý\u0002\u001a\r Ò\u0001*\u0005\u0018\u00010Ü\u00010Ü\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÌ\u0001\u0010Ô\u0001\u001a\u0006\bü\u0002\u0010ß\u0001R\u0018\u0010V\u001a\u00020\u000b8B@\u0002X\u0082\u0004¢\u0006\b\u001a\u0006\bþ\u0002\u0010î\u0001R+\u0010\u0081\u0003\u001a\u000b Ò\u0001*\u0004\u0018\u00010\u000e0\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÿ\u0002\u0010Ô\u0001\u001a\u0006\b\u0080\u0003\u0010ã\u0001¨\u0006\u0083\u0003"}, d2 = {"Le/a/p/a/b;", "Landroidx/fragment/app/Fragment;", "Lcom/truecaller/editprofile/ui/EditProfileMvp$View;", "Landroid/app/DatePickerDialog$OnDateSetListener;", "Le/a/p/a/h$b;", "Le/a/p/a/c$b;", "Le/a/p/a/a$b;", "Le/a/p/a/d$b;", "Le/a/p/a/g$b;", "Le/a/p/a/e$b;", "Le/a/p/a/f$b;", "", "text", "Lkotlin/Function1;", "Landroid/view/View;", "Ls1/s;", "listener", "sB", "(Ljava/lang/String;Ls1/z/b/l;)V", "Lcom/google/android/material/textfield/TextInputLayout;", ViewAction.VIEW, "qB", "(Lcom/google/android/material/textfield/TextInputLayout;)V", "Ljava/util/Date;", "date", "Ljava/text/DateFormat;", "defaultDateFormat", "fB", "(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;", "Landroid/text/Editable;", "rB", "(Landroid/text/Editable;)Ljava/lang/String;", "Landroid/content/Intent;", "Landroid/content/pm/ResolveInfo;", "resolveInfo", "OA", "(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "Pw", "lk", "Bb", "pz", "Mv", "ao", "toolbarTitle", "o", "(Ljava/lang/String;)V", "supportText", "Cr", "", "visible", "Ru", "(Z)V", "avatarUrl", "Xe", "Landroid/net/Uri;", "avatarUri", "u", "(Landroid/net/Uri;)V", "Gu", "Nn", "firstName", "Tf", "lastName", "Hf", "phoneNumber", "setPhoneNumber", AnalyticsConstants.EMAIL, "Yf", "dateOfBirthday", "defaultBirthdayFormat", "Zs", "(Ljava/util/Date;Ljava/text/DateFormat;)V", "ca", "gender", "Kc", "street", "dv", "zipCode", "jv", "city", "ei", "countryName", "Yg", "company", "wp", "jobTitle", "vy", "website", "ah", "bio", "he", "tagName", "tagIcon", "A2", "(Ljava/lang/String;Ljava/lang/String;)V", "Fm", "year", "month", "day", "", "maxDate", "tn", "(IIIJ)V", "qs", "Landroid/widget/DatePicker;", "onDateSet", "(Landroid/widget/DatePicker;III)V", "wd", "Lcom/truecaller/editprofile/ui/Gender;", "a7", "(Lcom/truecaller/editprofile/ui/Gender;)V", "preSelectedTagId", "nb", "(Ljava/lang/Long;)V", "vb", "Jr", "Pg", "ti", "Q0", "N0", "permission", "Gr", "uri", "qf", "k", "(Ljava/lang/String;)Z", "M5", "(Ljava/lang/String;I)V", "mainText", "f2", "bb", "ey", "yi", "ap", "Tt", "iv", "md", "secondaryPhoneNumber", "sc", "secondaryNumberHint", "Xj", "intent", "r9", "(Landroid/content/Intent;)V", "message", "Ua", "(ILjava/lang/String;)V", "Kf", "Wf", "Dn", "(ILjava/lang/String;Ljava/lang/String;)V", "Mh", "error", "es", "Sf", "ch", "Qj", "r6", "xf", "Lcom/truecaller/editprofile/ui/ErrorField;", "errorField", "js", "(Lcom/truecaller/editprofile/ui/ErrorField;)V", "m", "Dt", "Ew", "stringRes", "Lcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;", "videoCallerIdProfileAction", "Wq", "(ILcom/truecaller/editprofile/ui/EditProfileMvp$View$VideoCallerIdProfileAction;)V", "kr", "L6", "dw", "Ov", "fh", "Ax", "Sk", "t", "bg", "Nx", "onDestroyView", "onBackPressed", "Landroidx/appcompat/widget/Toolbar;", "kotlin.jvm.PlatformType", "Q", "Ls1/g;", "getToolbar", "()Landroidx/appcompat/widget/Toolbar;", "toolbar", "s", "getFirstNameTextInputLayout", "()Lcom/google/android/material/textfield/TextInputLayout;", "firstNameTextInputLayout", "Landroid/widget/EditText;", "v", "cB", "()Landroid/widget/EditText;", "jobTitleEditText", "P", "getSavingLoadingGroup", "()Landroid/view/View;", "savingLoadingGroup", "Landroid/widget/TextView;", "E", "getVideoCallerIdButton", "()Landroid/widget/TextView;", "videoCallerIdButton", "p", "getEmailTextInputLayout", "emailTextInputLayout", "VA", "()Ljava/lang/String;", "n", "getEditProfileContentConstraintLayout", "editProfileContentConstraintLayout", "jB", "j", "UA", "cityEditText", "getCountryEditText", "countryEditText", "h", "getBirthdayTextInputLayout", "birthdayTextInputLayout", "Lcom/google/android/material/appbar/CollapsingToolbarLayout;", "N", "getCollapsingToolbar", "()Lcom/google/android/material/appbar/CollapsingToolbarLayout;", "collapsingToolbar", "O", "iB", "saveButton", "B", "getSecondaryPhoneNumberTextInputLayout", "secondaryPhoneNumberTextInputLayout", "f", "RA", "bioEditText", "YA", "emailEditText", "Landroid/widget/ImageView;", "R", "PA", "()Landroid/widget/ImageView;", "avatar", "QA", "z", "getPhoneNumberEditText", "phoneNumberEditText", "mB", "V", "Ls1/z/b/l;", "saveOnClickListener", "Le/a/k/h;", AbstractC2405c.f7629a, "Le/a/k/h;", "getVideoCallerId", "()Le/a/k/h;", "setVideoCallerId", "(Le/a/k/h;)V", "videoCallerId", "i", "getBusinessSection", "businessSection", "Le/a/p/a/l;", "a", "Le/a/p/a/l;", "gB", "()Le/a/p/a/l;", "setPresenter$editprofile_release", "(Le/a/p/a/l;)V", "presenter", "D", "lB", "tagEditText", "q", "getFacebookButton", "facebookButton", "w", "eB", "lastNameEditText", "K", "nB", "websiteEditText", "L", "pB", "zipCodeEditText", "Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;", "d", "Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;", "getLaunchContext", "()Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;", "setLaunchContext", "(Lcom/truecaller/editprofile/ui/EditProfileLaunchContext;)V", "launchContext", "XA", "y", "getNestedScrollView", "nestedScrollView", "dB", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "getFeaturesRegistry$annotations", "featuresRegistry", "e", "Landroid/view/View;", "birthdayPickerDialogTitleView", "oB", "S", "getEditAvatar", "editAvatar", "getGoogleButton", "googleButton", "J", "getVideoCallerIdGroupView", "videoCallerIdGroupView", "Lcom/google/android/material/appbar/AppBarLayout;", "M", "getAppBarLayout", "()Lcom/google/android/material/appbar/AppBarLayout;", "appBarLayout", "bB", "WA", "companyEditText", "r", "aB", "firstNameEditText", "A", "getSecondaryPhoneNumberEditText", "secondaryPhoneNumberEditText", "x", "getLastNameTextInputLayout", "lastNameTextInputLayout", "TA", "", "Lcom/truecaller/editprofile/ui/EditProfileMvp$View$FormElements;", "U", "Ljava/util/Map;", "formElementToViewIdMap", "C", "kB", "streetEditText", "g", "SA", "birthdayEditText", "l", "getContactSupport", "contactSupport", "getGenderEditText", "genderEditText", "ZA", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "getGeneralLoading", "generalLoading", "<init>", "editprofile_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.p.a.b */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/b.class */
public final class C19138b extends Fragment implements EditProfileMvp$View, DatePickerDialog.OnDateSetListener, C19164h.AbstractC19166b, C19147c.AbstractC19149b, C19135a.AbstractC19137b, C19150d.AbstractC19152b, C19160g.AbstractC19162b, C19153e.AbstractC19155b, C19156f.AbstractC19158b {

    /* renamed from: W */
    public static final /* synthetic */ int f53366W = 0;

    /* renamed from: B */
    public final g f53368B;

    /* renamed from: U */
    public final Map<EditProfileMvp$View.FormElements, Integer> f53383U;
    @Inject

    /* renamed from: a */
    public AbstractC19171l f53385a;
    @Inject

    /* renamed from: b */
    public C20592g f53386b;
    @Inject

    /* renamed from: c */
    public AbstractC16111h f53387c;

    /* renamed from: d */
    public EditProfileLaunchContext f53388d;

    /* renamed from: e */
    public View f53389e;

    /* renamed from: h */
    public final g f53392h;

    /* renamed from: p */
    public final g f53400p;

    /* renamed from: s */
    public final g f53403s;

    /* renamed from: x */
    public final g f53408x;

    /* renamed from: f */
    public final g f53390f = C19286f.m13659t(this, C3890R.C3892id.bioEditText);

    /* renamed from: g */
    public final g f53391g = C19286f.m13659t(this, C3890R.C3892id.birthdayEditText);

    /* renamed from: i */
    public final g f53393i = C19286f.m13659t(this, C3890R.C3892id.businessSection);

    /* renamed from: j */
    public final g f53394j = C19286f.m13659t(this, C3890R.C3892id.cityEditText);

    /* renamed from: k */
    public final g f53395k = C19286f.m13659t(this, C3890R.C3892id.companyEditText);

    /* renamed from: l */
    public final g f53396l = C19286f.m13659t(this, C3890R.C3892id.contactSupport);

    /* renamed from: m */
    public final g f53397m = C19286f.m13659t(this, C3890R.C3892id.countryEditText);

    /* renamed from: n */
    public final g f53398n = C19286f.m13659t(this, C3890R.C3892id.editProfileContentConstraintLayout);

    /* renamed from: o */
    public final g f53399o = C19286f.m13659t(this, C3890R.C3892id.emailEditText);

    /* renamed from: q */
    public final g f53401q = C19286f.m13659t(this, C3890R.C3892id.facebookButton);

    /* renamed from: r */
    public final g f53402r = C19286f.m13659t(this, C3890R.C3892id.firstNameEditText);

    /* renamed from: t */
    public final g f53404t = C19286f.m13659t(this, C3890R.C3892id.genderEditText);

    /* renamed from: u */
    public final g f53405u = C19286f.m13659t(this, C3890R.C3892id.googleButton);

    /* renamed from: v */
    public final g f53406v = C19286f.m13659t(this, C3890R.C3892id.jobTitleEditText);

    /* renamed from: w */
    public final g f53407w = C19286f.m13659t(this, C3890R.C3892id.lastNameEditText);

    /* renamed from: y */
    public final g f53409y = C19286f.m13659t(this, C3890R.C3892id.nestedScrollView);

    /* renamed from: z */
    public final g f53410z = C19286f.m13659t(this, C3890R.C3892id.phoneNumberEditText);

    /* renamed from: A */
    public final g f53367A = C19286f.m13659t(this, C3890R.C3892id.secondaryPhoneNumberEditText);

    /* renamed from: C */
    public final g f53369C = C19286f.m13659t(this, C3890R.C3892id.streetEditText);

    /* renamed from: D */
    public final g f53370D = C19286f.m13659t(this, C3890R.C3892id.tagEditText);

    /* renamed from: E */
    public final g f53371E = C19286f.m13659t(this, C3890R.C3892id.videoCallerIdButton);

    /* renamed from: J */
    public final g f53372J = C19286f.m13659t(this, C3890R.C3892id.videoCallerIdGroupView);

    /* renamed from: K */
    public final g f53373K = C19286f.m13659t(this, C3890R.C3892id.websiteEditText);

    /* renamed from: L */
    public final g f53374L = C19286f.m13659t(this, C3890R.C3892id.zipCodeEditText);

    /* renamed from: M */
    public final g f53375M = C19286f.m13659t(this, C3890R.C3892id.appBarLayout);

    /* renamed from: N */
    public final g f53376N = C19286f.m13659t(this, C3890R.C3892id.collapsingToolbar);

    /* renamed from: O */
    public final g f53377O = C19286f.m13659t(this, C3890R.C3892id.saveButton);

    /* renamed from: P */
    public final g f53378P = C19286f.m13659t(this, C3890R.C3892id.savingLoadingGroup);

    /* renamed from: Q */
    public final g f53379Q = C19286f.m13659t(this, C3890R.C3892id.toolbar);

    /* renamed from: R */
    public final g f53380R = C19286f.m13659t(this, C3890R.C3892id.avatar);

    /* renamed from: S */
    public final g f53381S = C19286f.m13659t(this, C3890R.C3892id.editAvatar);

    /* renamed from: T */
    public final g f53382T = C19286f.m13659t(this, C3890R.C3892id.generalLoading);

    /* renamed from: V */
    public final l<View, s> f53384V = new C19140b(1, this);

    /* renamed from: e.a.p.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/p/a/b$a.class */
    public static final class View$OnClickListenerC19139a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f53411a;

        /* renamed from: b */
        public final /* synthetic */ Object f53412b;

        public View$OnClickListenerC19139a(int i, Object obj) {
            this.f53411a = i;
            this.f53412b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            EditProfileMvp$View editProfileMvp$View;
            EditProfileMvp$View editProfileMvp$View2;
            boolean z = false;
            switch (this.f53411a) {
                case 0:
                    C19172m c19172m = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    if (c19172m.m13939Qj().length() > 0) {
                        z = true;
                    }
                    if (!z) {
                        return;
                    }
                    EditProfileMvp$View editProfileMvp$View3 = (EditProfileMvp$View) c19172m.f57683a;
                    if (editProfileMvp$View3 != null) {
                        editProfileMvp$View3.mo14044Pw();
                    }
                    C8415b mo13896e = c19172m.f53475C.mo13896e();
                    if (mo13896e == null) {
                        EditProfileMvp$View editProfileMvp$View4 = (EditProfileMvp$View) c19172m.f57683a;
                        if (editProfileMvp$View4 == null) {
                            return;
                        }
                        editProfileMvp$View4.mo14028Wf(C3890R.string.ProfileEditNumberMessage, c19172m.m13939Qj());
                        return;
                    }
                    EditProfileMvp$View editProfileMvp$View5 = (EditProfileMvp$View) c19172m.f57683a;
                    if (editProfileMvp$View5 == null) {
                        return;
                    }
                    editProfileMvp$View5.mo14060Dn(C3890R.string.ProfileEditNumberWithSecondaryNumberMessage, c19172m.m13939Qj(), mo13896e.f26095b);
                    return;
                case 1:
                    C19172m c19172m2 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    EditProfileMvp$View editProfileMvp$View6 = (EditProfileMvp$View) c19172m2.f57683a;
                    if (editProfileMvp$View6 != null) {
                        editProfileMvp$View6.mo14044Pw();
                    }
                    C8415b mo13896e2 = c19172m2.f53475C.mo13896e();
                    if (mo13896e2 == null) {
                        EditProfileMvp$View editProfileMvp$View7 = (EditProfileMvp$View) c19172m2.f57683a;
                        if (editProfileMvp$View7 == null) {
                            return;
                        }
                        editProfileMvp$View7.mo13975r9(c19172m2.f53475C.mo13898c());
                        return;
                    }
                    EditProfileMvp$View editProfileMvp$View8 = (EditProfileMvp$View) c19172m2.f57683a;
                    if (editProfileMvp$View8 == null) {
                        return;
                    }
                    editProfileMvp$View8.mo14031Ua(C3890R.string.ProfileEditSecondaryPhoneNumberActionsMessage, mo13896e2.f26095b);
                    return;
                case 2:
                    C19172m c19172m3 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    long mo13819c = c19172m3.f53506x.mo13819c();
                    Calendar calendar = Calendar.getInstance();
                    s1.z.c.l.d(calendar, "calendar");
                    calendar.setTimeInMillis(mo13819c);
                    calendar.add(1, -21);
                    Date date = c19172m3.f53492j;
                    if (date != null) {
                        calendar.setTime(date);
                    }
                    int i = calendar.get(1);
                    int i2 = calendar.get(2);
                    int i3 = calendar.get(5);
                    EditProfileMvp$View editProfileMvp$View9 = (EditProfileMvp$View) c19172m3.f57683a;
                    if (editProfileMvp$View9 != null) {
                        editProfileMvp$View9.mo14044Pw();
                    }
                    EditProfileMvp$View editProfileMvp$View10 = (EditProfileMvp$View) c19172m3.f57683a;
                    if (editProfileMvp$View10 != null) {
                        editProfileMvp$View10.mo13970tn(i, i2, i3, mo13819c);
                    }
                    EditProfileMvp$View editProfileMvp$View11 = (EditProfileMvp$View) c19172m3.f57683a;
                    if (editProfileMvp$View11 == null) {
                        return;
                    }
                    Date time = calendar.getTime();
                    s1.z.c.l.d(time, "calendar.time");
                    editProfileMvp$View11.mo13977qs(time, c19172m3.f53499q);
                    return;
                case 3:
                    C19172m c19172m4 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    c19172m4.f53492j = null;
                    EditProfileMvp$View editProfileMvp$View12 = (EditProfileMvp$View) c19172m4.f57683a;
                    if (editProfileMvp$View12 != null) {
                        editProfileMvp$View12.mo14012ca();
                    }
                    EditProfileMvp$View editProfileMvp$View13 = (EditProfileMvp$View) c19172m4.f57683a;
                    if (editProfileMvp$View13 == null) {
                        return;
                    }
                    editProfileMvp$View13.mo13989lk();
                    return;
                case 4:
                    C19172m c19172m5 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    EditProfileMvp$View editProfileMvp$View14 = (EditProfileMvp$View) c19172m5.f57683a;
                    if (editProfileMvp$View14 != null) {
                        editProfileMvp$View14.mo14044Pw();
                    }
                    EditProfileMvp$View editProfileMvp$View15 = (EditProfileMvp$View) c19172m5.f57683a;
                    if (editProfileMvp$View15 == null) {
                        return;
                    }
                    editProfileMvp$View15.mo13966wd();
                    return;
                case 5:
                    C19172m c19172m6 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    boolean isEnabled = c19172m6.f53508z.m10954n().isEnabled();
                    if (isEnabled) {
                        EditProfileMvp$View editProfileMvp$View16 = (EditProfileMvp$View) c19172m6.f57683a;
                        if (editProfileMvp$View16 == null) {
                            return;
                        }
                        editProfileMvp$View16.mo14058Ew();
                        return;
                    } else if (isEnabled || (editProfileMvp$View = (EditProfileMvp$View) c19172m6.f57683a) == null) {
                        return;
                    } else {
                        editProfileMvp$View.mo14059Dt();
                        return;
                    }
                case 6:
                    C19172m c19172m7 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    EditProfileMvp$View editProfileMvp$View17 = (EditProfileMvp$View) c19172m7.f57683a;
                    if (editProfileMvp$View17 != null) {
                        editProfileMvp$View17.mo14044Pw();
                    }
                    EditProfileMvp$View editProfileMvp$View18 = (EditProfileMvp$View) c19172m7.f57683a;
                    if (editProfileMvp$View18 == null) {
                        return;
                    }
                    editProfileMvp$View18.mo13984nb(c19172m7.f53491i);
                    return;
                case 7:
                    AbstractC19171l m14000gB = ((C19138b) this.f53412b).m14000gB();
                    s1.z.c.l.d(view, "it");
                    Object tag = view.getTag();
                    Objects.requireNonNull(tag, "null cannot be cast to non-null type com.truecaller.editprofile.ui.EditProfileMvp.View.VideoCallerIdProfileAction");
                    EditProfileMvp$View.VideoCallerIdProfileAction videoCallerIdProfileAction = (EditProfileMvp$View.VideoCallerIdProfileAction) tag;
                    C19172m c19172m8 = (C19172m) m14000gB;
                    Objects.requireNonNull(c19172m8);
                    s1.z.c.l.e(videoCallerIdProfileAction, "videoCallerIdProfileAction");
                    int ordinal = videoCallerIdProfileAction.ordinal();
                    if (ordinal != 0) {
                        if (ordinal != 1 || (editProfileMvp$View2 = (EditProfileMvp$View) c19172m8.f57683a) == null) {
                            return;
                        }
                        editProfileMvp$View2.mo14008dw();
                        return;
                    }
                    EditProfileMvp$View editProfileMvp$View19 = (EditProfileMvp$View) c19172m8.f57683a;
                    if (editProfileMvp$View19 == null) {
                        return;
                    }
                    editProfileMvp$View19.mo14052L6();
                    return;
                case 8:
                    C19172m c19172m9 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    EditProfileMvp$View editProfileMvp$View20 = (EditProfileMvp$View) c19172m9.f57683a;
                    if (editProfileMvp$View20 != null) {
                        editProfileMvp$View20.mo14044Pw();
                    }
                    c19172m9.m13937Sj("EditProflePrefillPressed", "Google", new k[0]);
                    EditProfileMvp$View editProfileMvp$View21 = (EditProfileMvp$View) c19172m9.f57683a;
                    if (editProfileMvp$View21 == null) {
                        return;
                    }
                    editProfileMvp$View21.mo14001fh();
                    return;
                case 9:
                    C19172m c19172m10 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    EditProfileMvp$View editProfileMvp$View22 = (EditProfileMvp$View) c19172m10.f57683a;
                    if (editProfileMvp$View22 != null) {
                        editProfileMvp$View22.mo14044Pw();
                    }
                    c19172m10.m13937Sj("EditProflePrefillPressed", "Facebook", new k[0]);
                    EditProfileMvp$View editProfileMvp$View23 = (EditProfileMvp$View) c19172m10.f57683a;
                    if (editProfileMvp$View23 == null) {
                        return;
                    }
                    editProfileMvp$View23.mo14046Ov();
                    return;
                case 10:
                    C19172m c19172m11 = (C19172m) ((C19138b) this.f53412b).m14000gB();
                    EditProfileMvp$View editProfileMvp$View24 = (EditProfileMvp$View) c19172m11.f57683a;
                    if (editProfileMvp$View24 != null) {
                        editProfileMvp$View24.mo14044Pw();
                    }
                    EditProfileMvp$View editProfileMvp$View25 = (EditProfileMvp$View) c19172m11.f57683a;
                    if (editProfileMvp$View25 == null) {
                        return;
                    }
                    editProfileMvp$View25.mo13968vb();
                    return;
                default:
                    throw null;
            }
        }
    }

    /* renamed from: e.a.p.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/p/a/b$b.class */
    public static final class C19140b extends m implements l<View, s> {

        /* renamed from: b */
        public final /* synthetic */ int f53413b;

        /* renamed from: c */
        public final /* synthetic */ Object f53414c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19140b(int i, Object obj) {
            super(1);
            this.f53413b = i;
            this.f53414c = obj;
        }

        /* renamed from: d */
        public final Object m13962d(Object obj) {
            s sVar = s.a;
            int i = this.f53413b;
            if (i == 0) {
                s1.z.c.l.e((View) obj, "it");
                C19172m c19172m = (C19172m) ((C19138b) this.f53414c).m14000gB();
                EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
                if (editProfileMvp$View != null) {
                    editProfileMvp$View.mo14036Sk();
                }
                EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) c19172m.f57683a;
                if (editProfileMvp$View2 != null) {
                    editProfileMvp$View2.mo13971t();
                }
                return sVar;
            } else if (i != 1) {
                throw null;
            } else {
                s1.z.c.l.e((View) obj, "it");
                AbstractC19171l m14000gB = ((C19138b) this.f53414c).m14000gB();
                ((C19172m) m14000gB).m13931Yj(((C19138b) this.f53414c).m14020ZA(), ((C19138b) this.f53414c).m14010dB(), ((C19138b) this.f53414c).m14026XA(), ((C19138b) this.f53414c).m13996jB(), ((C19138b) this.f53414c).m13982oB(), ((C19138b) this.f53414c).m14035TA(), ((C19138b) this.f53414c).m14030VA(), ((C19138b) this.f53414c).m14014bB(), ((C19138b) this.f53414c).m13987mB(), ((C19138b) this.f53414c).m14042QA());
                return sVar;
            }
        }
    }

    /* renamed from: e.a.p.a.b$c */
    /* loaded from: classes5-dex2jar.jar:e/a/p/a/b$c.class */
    public static final class C19141c extends m implements l<Editable, s> {

        /* renamed from: b */
        public final /* synthetic */ int f53415b;

        /* renamed from: c */
        public final /* synthetic */ Object f53416c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19141c(int i, Object obj) {
            super(1);
            this.f53415b = i;
            this.f53416c = obj;
        }

        /* renamed from: d */
        public final Object m13961d(Object obj) {
            EditProfileMvp$View editProfileMvp$View;
            EditProfileMvp$View editProfileMvp$View2;
            EditProfileMvp$View editProfileMvp$View3;
            s sVar = s.a;
            int i = this.f53415b;
            boolean z = false;
            String str = "";
            if (i == 0) {
                Editable editable = (Editable) obj;
                AbstractC19171l m14000gB = ((C19138b) this.f53416c).m14000gB();
                if (editable != null) {
                    str = ((C19138b) this.f53416c).m13974rB(editable);
                }
                C19172m c19172m = (C19172m) m14000gB;
                Objects.requireNonNull(c19172m);
                s1.z.c.l.e(str, "text");
                boolean z2 = false;
                if (str.length() > 0) {
                    z2 = true;
                }
                if (z2 && (editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a) != null) {
                    editProfileMvp$View.mo14037Sf();
                }
                EditProfileMvp$View editProfileMvp$View4 = (EditProfileMvp$View) c19172m.f57683a;
                if (editProfileMvp$View4 != null) {
                    editProfileMvp$View4.mo13989lk();
                }
                return sVar;
            } else if (i == 1) {
                Editable editable2 = (Editable) obj;
                AbstractC19171l m14000gB2 = ((C19138b) this.f53416c).m14000gB();
                if (editable2 != null) {
                    str = ((C19138b) this.f53416c).m13974rB(editable2);
                }
                C19172m c19172m2 = (C19172m) m14000gB2;
                Objects.requireNonNull(c19172m2);
                s1.z.c.l.e(str, "text");
                boolean z3 = false;
                if (str.length() > 0) {
                    z3 = true;
                }
                if (z3 && (editProfileMvp$View2 = (EditProfileMvp$View) c19172m2.f57683a) != null) {
                    editProfileMvp$View2.mo14041Qj();
                }
                EditProfileMvp$View editProfileMvp$View5 = (EditProfileMvp$View) c19172m2.f57683a;
                if (editProfileMvp$View5 != null) {
                    editProfileMvp$View5.mo13989lk();
                }
                return sVar;
            } else if (i != 2) {
                throw null;
            } else {
                Editable editable3 = (Editable) obj;
                AbstractC19171l m14000gB3 = ((C19138b) this.f53416c).m14000gB();
                if (editable3 != null) {
                    str = ((C19138b) this.f53416c).m13974rB(editable3);
                }
                C19172m c19172m3 = (C19172m) m14000gB3;
                Objects.requireNonNull(c19172m3);
                s1.z.c.l.e(str, "text");
                if (str.length() == 0) {
                    z = true;
                }
                if ((z || C19286f.m13664o(str)) && (editProfileMvp$View3 = (EditProfileMvp$View) c19172m3.f57683a) != null) {
                    editProfileMvp$View3.mo13964xf();
                }
                EditProfileMvp$View editProfileMvp$View6 = (EditProfileMvp$View) c19172m3.f57683a;
                if (editProfileMvp$View6 != null) {
                    editProfileMvp$View6.mo13989lk();
                }
                return sVar;
            }
        }
    }

    /* renamed from: e.a.p.a.b$d */
    /* loaded from: classes6-dex2jar.jar:e/a/p/a/b$d.class */
    public static final class C19142d extends m implements l<Editable, s> {

        /* renamed from: b */
        public final /* synthetic */ int f53417b;

        /* renamed from: c */
        public final /* synthetic */ Object f53418c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19142d(int i, Object obj) {
            super(1);
            this.f53417b = i;
            this.f53418c = obj;
        }

        /* renamed from: d */
        public final Object m13960d(Object obj) {
            s sVar = s.a;
            switch (this.f53417b) {
                case 0:
                    Editable editable = (Editable) obj;
                    ((C19172m) ((C19138b) this.f53418c).m14000gB()).m13933Wj();
                    return sVar;
                case 1:
                    Editable editable2 = (Editable) obj;
                    ((C19172m) ((C19138b) this.f53418c).m14000gB()).m13933Wj();
                    return sVar;
                case 2:
                    Editable editable3 = (Editable) obj;
                    ((C19172m) ((C19138b) this.f53418c).m14000gB()).m13933Wj();
                    return sVar;
                case 3:
                    Editable editable4 = (Editable) obj;
                    ((C19172m) ((C19138b) this.f53418c).m14000gB()).m13933Wj();
                    return sVar;
                case 4:
                    Editable editable5 = (Editable) obj;
                    ((C19172m) ((C19138b) this.f53418c).m14000gB()).m13933Wj();
                    return sVar;
                case 5:
                    Editable editable6 = (Editable) obj;
                    ((C19172m) ((C19138b) this.f53418c).m14000gB()).m13933Wj();
                    return sVar;
                case 6:
                    Editable editable7 = (Editable) obj;
                    ((C19172m) ((C19138b) this.f53418c).m14000gB()).m13933Wj();
                    return sVar;
                default:
                    throw null;
            }
        }
    }

    /* renamed from: e.a.p.a.b$e */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/b$e.class */
    public static final class View$OnClickListenerC19143e implements View.OnClickListener {
        public View$OnClickListenerC19143e() {
            C19138b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C19172m c19172m = (C19172m) C19138b.this.m14000gB();
            EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
            if (editProfileMvp$View != null) {
                editProfileMvp$View.mo14044Pw();
            }
            EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) c19172m.f57683a;
            if (editProfileMvp$View2 != null) {
                editProfileMvp$View2.mo13968vb();
            }
        }
    }

    /* renamed from: e.a.p.a.b$f */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/b$f.class */
    public static final class C19144f extends c<Drawable> {

        /* renamed from: e */
        public final /* synthetic */ int f53421e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19144f(int i, int i2, int i3, int i4) {
            super(i3, i4);
            C19138b.this = r5;
            this.f53421e = i;
        }

        /* renamed from: d */
        public void m13959d(Drawable drawable) {
        }

        /* renamed from: e */
        public void m13958e(Object obj, AbstractC22604d abstractC22604d) {
            Drawable drawable = (Drawable) obj;
            s1.z.c.l.e(drawable, Constants.VAST_RESOURCE);
            C19138b c19138b = C19138b.this;
            int i = C19138b.f53366W;
            EditText m13990lB = c19138b.m13990lB();
            s1.z.c.l.d(m13990lB, "tagEditText");
            m13990lB.setCompoundDrawablePadding(this.f53421e);
            C19138b.this.m13990lB().setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }

    /* renamed from: e.a.p.a.b$g */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/b$g.class */
    public static final class View$OnClickListenerC19145g implements View.OnClickListener {
        public View$OnClickListenerC19145g() {
            C19138b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C19138b.this.onBackPressed();
        }
    }

    /* renamed from: e.a.p.a.b$h */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/b$h.class */
    public static final class C19146h implements DatePicker.OnDateChangedListener {
        public C19146h(Context context, int i, int i2, int i3, long j) {
            C19138b.this = r4;
        }

        @Override // android.widget.DatePicker.OnDateChangedListener
        public final void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
            C19172m c19172m = (C19172m) C19138b.this.m14000gB();
            EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
            if (editProfileMvp$View != null) {
                editProfileMvp$View.mo13977qs(c19172m.m13943Mj(i, i2, i3), c19172m.f53499q);
            }
        }
    }

    public C19138b() {
        int i = C3890R.C3892id.birthdayTextInputLayout;
        this.f53392h = C19286f.m13659t(this, i);
        int i2 = C3890R.C3892id.emailTextInputLayout;
        this.f53400p = C19286f.m13659t(this, i2);
        int i3 = C3890R.C3892id.firstNameTextInputLayout;
        this.f53403s = C19286f.m13659t(this, i3);
        int i4 = C3890R.C3892id.lastNameTextInputLayout;
        this.f53408x = C19286f.m13659t(this, i4);
        int i5 = C3890R.C3892id.secondaryPhoneNumberTextInputLayout;
        this.f53368B = C19286f.m13659t(this, i5);
        this.f53383U = i.W(new k[]{new k(EditProfileMvp$View.FormElements.FIRST_NAME, Integer.valueOf(i3)), new k(EditProfileMvp$View.FormElements.LAST_NAME, Integer.valueOf(i4)), new k(EditProfileMvp$View.FormElements.PHONE_NUMBER, Integer.valueOf(C3890R.C3892id.phoneNumberTextInputLayout)), new k(EditProfileMvp$View.FormElements.SECONDARY_PHONE_NUMBER, Integer.valueOf(i5)), new k(EditProfileMvp$View.FormElements.EMAIL, Integer.valueOf(i2)), new k(EditProfileMvp$View.FormElements.BIRTH_DAY, Integer.valueOf(i)), new k(EditProfileMvp$View.FormElements.GENDER, Integer.valueOf(C3890R.C3892id.genderTextInputLayout)), new k(EditProfileMvp$View.FormElements.ADDRESS_SECTION_TITLE, Integer.valueOf(C3890R.C3892id.addressSectionTitle)), new k(EditProfileMvp$View.FormElements.ADDRESS_STREET, Integer.valueOf(C3890R.C3892id.streetTextInputLayout)), new k(EditProfileMvp$View.FormElements.ADDRESS_ZIP_CODE, Integer.valueOf(C3890R.C3892id.zipCodeTextInputLayout)), new k(EditProfileMvp$View.FormElements.ADDRESS_CITY, Integer.valueOf(C3890R.C3892id.cityTextInputLayout)), new k(EditProfileMvp$View.FormElements.ADDRESS_COUNTRY, Integer.valueOf(C3890R.C3892id.countryTextInputLayout)), new k(EditProfileMvp$View.FormElements.ABOUT_SECTION_TITLE, Integer.valueOf(C3890R.C3892id.aboutSectionTitle)), new k(EditProfileMvp$View.FormElements.ABOUT_COMPANY, Integer.valueOf(C3890R.C3892id.companyTextInputLayout)), new k(EditProfileMvp$View.FormElements.ABOUT_JOB_TITLE, Integer.valueOf(C3890R.C3892id.jobTitleTextInputLayout)), new k(EditProfileMvp$View.FormElements.ABOUT_WEBSITE, Integer.valueOf(C3890R.C3892id.websiteTextInputLayout)), new k(EditProfileMvp$View.FormElements.ABOUT_ME, Integer.valueOf(C3890R.C3892id.bioTextInputLayout)), new k(EditProfileMvp$View.FormElements.ABOUT_TAG, Integer.valueOf(C3890R.C3892id.tagTextInputLayout)), new k(EditProfileMvp$View.FormElements.SECTION_BUSINESS, Integer.valueOf(C3890R.C3892id.businessSection))});
        new C19140b(0, this);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: A2 */
    public void mo14064A2(String str, String str2) {
        s1.z.c.l.e(str, "tagName");
        m13990lB().setText(str);
        if (str2 != null) {
            Context requireContext = requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            Resources resources = requireContext.getResources();
            s1.z.c.l.d(resources, "requireContext().resources");
            int m13497y = (int) C19291g.m13497y(resources, 20.0f);
            Context requireContext2 = requireContext();
            s1.z.c.l.d(requireContext2, "requireContext()");
            Resources resources2 = requireContext2.getResources();
            s1.z.c.l.d(resources2, "requireContext().resources");
            int m13497y2 = (int) C19291g.m13497y(resources2, 8.0f);
            C22234h mo8414k = C17891a1.C17902k.m15664K1(requireContext()).mo8414k();
            mo8414k.mo8420V(str2);
            ((C21852d) mo8414k).m8429M(new C19144f(m13497y2, m13497y, m13497y, m13497y));
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Ax */
    public void mo14063Ax(boolean z) {
        View view = (View) this.f53405u.getValue();
        s1.z.c.l.d(view, "googleButton");
        C19286f.m13683U(view, z);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Bb */
    public void mo14062Bb() {
        View view = (View) this.f53382T.getValue();
        s1.z.c.l.d(view, "generalLoading");
        C19286f.m13684T(view);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Cr */
    public void mo14061Cr(String str) {
        s1.z.c.l.e(str, "supportText");
        TextView textView = (TextView) this.f53396l.getValue();
        s1.z.c.l.d(textView, "contactSupport");
        textView.setText(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Dn */
    public void mo14060Dn(int i, String str, String str2) {
        s1.z.c.l.e(str, "phoneNumber");
        s1.z.c.l.e(str2, "secondaryPhoneNumber");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            String string = context.getString(i, C8605o.m28239a(str), C8605o.m28239a(str2));
            s1.z.c.l.d(string, "context.getString(messag…at(secondaryPhoneNumber))");
            s1.z.c.l.e(string, "mainText");
            C19164h c19164h = new C19164h();
            Bundle bundle = new Bundle();
            bundle.putString("main_text", string);
            c19164h.setArguments(bundle);
            c19164h.show(getChildFragmentManager(), (String) null);
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Dt */
    public void mo14059Dt() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            BusinessProfileOnboardingActivity.C3529b c3529b = BusinessProfileOnboardingActivity.f10393d;
            s1.z.c.l.e(activity, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent((Context) activity, (Class<?>) BusinessProfileOnboardingActivity.class);
            intent.putExtra("arg_from_wizard", false);
            intent.putExtra("arg_migrating", true);
            startActivityForResult(intent, 0);
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Ew */
    public void mo14058Ew() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            startActivityForResult(OnboardingIntroActivity.C3503a.m35860a(activity), 0);
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Fm */
    public void mo14057Fm() {
        EditText m13990lB = m13990lB();
        s1.z.c.l.d(m13990lB, "tagEditText");
        m13990lB.setText((CharSequence) null);
        m13990lB().setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Gr */
    public void mo14056Gr(String str) {
        s1.z.c.l.e(str, "permission");
        C18334g0.m15198v0(str, true);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Gu */
    public void mo14055Gu() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            int dimensionPixelSize = getResources().getDimensionPixelSize(C3890R.dimen.add_photo_icon_padding);
            ImageView m14045PA = m14045PA();
            m14045PA.setClickable(true);
            m14045PA.setFocusable(true);
            m14045PA.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
            int i = C3890R.C3891drawable.ic_tcx_add_photo_24dp;
            C26536a c26536a = C8605o.f26448a;
            m14045PA.setImageDrawable(context.getResources().getDrawable(i, context.getTheme()));
            m14045PA.getDrawable().setTint(C19291g.m13538k0(context, C3890R.attr.tcx_brandBackgroundBlue));
            m14045PA.setBackground(context.getResources().getDrawable(C3890R.C3891drawable.background_tcx_oval_add_photo, context.getTheme()));
            m14045PA().setOnClickListener(new View$OnClickListenerC19143e());
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Hf */
    public void mo14054Hf(String str) {
        s1.z.c.l.e(str, "lastName");
        m14007eB().setText(str);
    }

    @Override // p193e.p194a.p1124p.p1125a.C19150d.AbstractC19152b
    /* renamed from: Jr */
    public void mo13956Jr() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View == null) {
            return;
        }
        if (c19172m.f53479K.mo13825h("android.permission.CAMERA")) {
            editProfileMvp$View.mo14043Q0();
        } else if (!editProfileMvp$View.mo13993k("android.permission.CAMERA")) {
            editProfileMvp$View.mo14051M5("android.permission.CAMERA", 0);
        } else {
            String mo13768b = c19172m.f53505w.mo13768b(C3890R.string.PermissionDialog_cameraPermissionDenied, new Object[0]);
            s1.z.c.l.d(mo13768b, "resourceProvider.getStri…g_cameraPermissionDenied)");
            editProfileMvp$View.mo14003f2(mo13768b);
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Kc */
    public void mo14053Kc(String str) {
        s1.z.c.l.e(str, "gender");
        ((EditText) this.f53404t.getValue()).setText(str);
    }

    @Override // p193e.p194a.p1124p.p1125a.C19153e.AbstractC19155b
    /* renamed from: Kf */
    public void mo13953Kf() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        String m14020ZA = m14020ZA();
        String m14010dB = m14010dB();
        String m14026XA = m14026XA();
        String m13996jB = m13996jB();
        String m13982oB = m13982oB();
        String m14035TA = m14035TA();
        String m14030VA = m14030VA();
        String m14014bB = m14014bB();
        String m13987mB = m13987mB();
        String m14042QA = m14042QA();
        C19172m c19172m = (C19172m) abstractC19171l;
        Objects.requireNonNull(c19172m);
        s1.z.c.l.e(m14020ZA, "firstName");
        s1.z.c.l.e(m14010dB, "lastName");
        s1.z.c.l.e(m14026XA, AnalyticsConstants.EMAIL);
        s1.z.c.l.e(m13996jB, "streetAddress");
        s1.z.c.l.e(m13982oB, "zipCode");
        s1.z.c.l.e(m14035TA, "city");
        s1.z.c.l.e(m14030VA, "company");
        s1.z.c.l.e(m14014bB, "jobTitle");
        s1.z.c.l.e(m13987mB, "website");
        s1.z.c.l.e(m14042QA, "bio");
        c19172m.m13928bk(m14020ZA, m14010dB, m14026XA, m13996jB, m13982oB, m14035TA, m14030VA, m14014bB, m13987mB, m14042QA);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: L6 */
    public void mo14052L6() {
        Context activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            AbstractC16111h abstractC16111h = this.f53387c;
            if (abstractC16111h != null) {
                abstractC16111h.mo17860H(activity, PreviewModes.ON_BOARDING, OnboardingContext.PROFILE);
            } else {
                s1.z.c.l.l("videoCallerId");
                throw null;
            }
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: M5 */
    public void mo14051M5(String str, int i) {
        s1.z.c.l.e(str, "permission");
        requestPermissions(new String[]{str}, i);
    }

    @Override // p193e.p194a.p1124p.p1125a.C19164h.AbstractC19166b
    /* renamed from: Mh */
    public void mo13949Mh() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View != null) {
            editProfileMvp$View.mo14062Bb();
        }
        c19172m.f53498p = true;
        c19172m.f53487e = c19172m.f53475C.mo13895f(new C19177o(c19172m));
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Mv */
    public void mo14050Mv() {
        TextView m13998iB = m13998iB();
        s1.z.c.l.d(m13998iB, "saveButton");
        C19286f.m13689O(m13998iB);
        View view = (View) this.f53378P.getValue();
        if (view != null) {
            C19286f.m13684T(view);
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: N0 */
    public void mo14049N0() {
        startActivityForResult(Intent.createChooser(C8612s.m28219c(), getString(C3890R.string.StrAppMultiple)), 5);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Nn */
    public void mo14048Nn(boolean z) {
        View view = (View) this.f53381S.getValue();
        s1.z.c.l.d(view, "editAvatar");
        C19286f.m13683U(view, z);
    }

    @Override // p193e.p194a.p1124p.p1125a.C19156f.AbstractC19158b
    /* renamed from: Nx */
    public void mo13952Nx() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        Objects.requireNonNull(c19172m);
        d.w2(c19172m, (f) null, (j0) null, new C19180q(c19172m, null), 3, (Object) null);
    }

    /* renamed from: OA */
    public final Intent m14047OA(Intent intent, ResolveInfo resolveInfo) {
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
        return intent;
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Ov */
    public void mo14046Ov() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        startActivityForResult(new Intent(requireContext, FacebookLoginActivity.class), 2);
    }

    /* renamed from: PA */
    public final ImageView m14045PA() {
        return (ImageView) this.f53380R.getValue();
    }

    @Override // p193e.p194a.p1124p.p1125a.C19150d.AbstractC19152b
    /* renamed from: Pg */
    public void mo13955Pg() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View == null) {
            return;
        }
        if (c19172m.f53479K.mo13825h("android.permission.READ_EXTERNAL_STORAGE")) {
            editProfileMvp$View.mo14049N0();
        } else if (!editProfileMvp$View.mo13993k("android.permission.READ_EXTERNAL_STORAGE")) {
            editProfileMvp$View.mo14051M5("android.permission.READ_EXTERNAL_STORAGE", 1);
        } else {
            String mo13768b = c19172m.f53505w.mo13768b(C3890R.string.PermissionDialog_readStoragePermissionDenied, new Object[0]);
            s1.z.c.l.d(mo13768b, "resourceProvider.getStri…dStoragePermissionDenied)");
            editProfileMvp$View.mo14003f2(mo13768b);
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Pw */
    public void mo14044Pw() {
        View currentFocus;
        n3.r.a.l activity = getActivity();
        if (activity != null && (currentFocus = activity.getCurrentFocus()) != null) {
            currentFocus.clearFocus();
        }
        ((View) this.f53398n.getValue()).requestFocus();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Q0 */
    public void mo14043Q0() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            startActivityForResult(C8612s.m28221a(context), 4);
        }
    }

    /* renamed from: QA */
    public final String m14042QA() {
        EditText m14040RA = m14040RA();
        s1.z.c.l.d(m14040RA, "bioEditText");
        Editable text = m14040RA.getText();
        return text != null ? m13974rB(text) : "";
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Qj */
    public void mo14041Qj() {
        TextInputLayout textInputLayout = (TextInputLayout) this.f53408x.getValue();
        s1.z.c.l.d(textInputLayout, "lastNameTextInputLayout");
        m13979qB(textInputLayout);
    }

    /* renamed from: RA */
    public final EditText m14040RA() {
        return (EditText) this.f53390f.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Ru */
    public void mo14039Ru(boolean z) {
        View view = (View) this.f53393i.getValue();
        s1.z.c.l.d(view, "businessSection");
        C19286f.m13683U(view, z);
    }

    /* renamed from: SA */
    public final EditText m14038SA() {
        return (EditText) this.f53391g.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Sf */
    public void mo14037Sf() {
        TextInputLayout textInputLayout = (TextInputLayout) this.f53403s.getValue();
        s1.z.c.l.d(textInputLayout, "firstNameTextInputLayout");
        m13979qB(textInputLayout);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Sk */
    public void mo14036Sk() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            activity.setResult(-1);
        }
    }

    /* renamed from: TA */
    public final String m14035TA() {
        EditText m14032UA = m14032UA();
        s1.z.c.l.d(m14032UA, "cityEditText");
        Editable text = m14032UA.getText();
        return text != null ? m13974rB(text) : "";
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Tf */
    public void mo14034Tf(String str) {
        s1.z.c.l.e(str, "firstName");
        m14018aB().setText(str);
    }

    @Override // p193e.p194a.p1124p.p1125a.C19135a.AbstractC19137b
    /* renamed from: Tt */
    public void mo14033Tt() {
        mo13971t();
    }

    /* renamed from: UA */
    public final EditText m14032UA() {
        return (EditText) this.f53394j.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Ua */
    public void mo14031Ua(int i, String str) {
        s1.z.c.l.e(str, "phoneNumber");
        String string = getString(i, new Object[]{C8605o.m28239a(str)});
        s1.z.c.l.d(string, "getString(message, GUIUt….bidiFormat(phoneNumber))");
        s1.z.c.l.e(string, "mainText");
        C19156f c19156f = new C19156f();
        Bundle bundle = new Bundle();
        bundle.putString("extra_text", string);
        c19156f.setArguments(bundle);
        c19156f.show(getChildFragmentManager(), (String) null);
    }

    /* renamed from: VA */
    public final String m14030VA() {
        EditText m14029WA = m14029WA();
        s1.z.c.l.d(m14029WA, "companyEditText");
        Editable text = m14029WA.getText();
        return text != null ? m13974rB(text) : "";
    }

    /* renamed from: WA */
    public final EditText m14029WA() {
        return (EditText) this.f53395k.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Wf */
    public void mo14028Wf(int i, String str) {
        s1.z.c.l.e(str, "phoneNumber");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            String string = context.getString(i, C8605o.m28239a(str));
            s1.z.c.l.d(string, "context.getString(messag….bidiFormat(phoneNumber))");
            s1.z.c.l.e(string, "mainText");
            C19164h c19164h = new C19164h();
            Bundle bundle = new Bundle();
            bundle.putString("main_text", string);
            c19164h.setArguments(bundle);
            c19164h.show(getChildFragmentManager(), (String) null);
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Wq */
    public void mo14027Wq(int i, EditProfileMvp$View.VideoCallerIdProfileAction videoCallerIdProfileAction) {
        s1.z.c.l.e(videoCallerIdProfileAction, "videoCallerIdProfileAction");
        TextView textView = (TextView) this.f53371E.getValue();
        textView.setText(getString(i, new Object[]{getString(C3890R.string.video_caller_id)}));
        textView.setTag(videoCallerIdProfileAction);
        View view = (View) this.f53372J.getValue();
        s1.z.c.l.d(view, "videoCallerIdGroupView");
        C19286f.m13684T(view);
    }

    /* renamed from: XA */
    public final String m14026XA() {
        EditText m14023YA = m14023YA();
        s1.z.c.l.d(m14023YA, "emailEditText");
        Editable text = m14023YA.getText();
        return text != null ? m13974rB(text) : "";
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Xe */
    public void mo14025Xe(String str) {
        s1.z.c.l.e(str, "avatarUrl");
        Uri parse = Uri.parse(str);
        s1.z.c.l.d(parse, "Uri.parse(avatarUrl)");
        mo13969u(parse);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Xj */
    public void mo14024Xj(String str) {
        s1.z.c.l.e(str, "secondaryNumberHint");
        TextInputLayout textInputLayout = (TextInputLayout) this.f53368B.getValue();
        s1.z.c.l.d(textInputLayout, "secondaryPhoneNumberTextInputLayout");
        textInputLayout.setHint(str);
    }

    /* renamed from: YA */
    public final EditText m14023YA() {
        return (EditText) this.f53399o.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Yf */
    public void mo14022Yf(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.EMAIL);
        m14023YA().setText(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Yg */
    public void mo14021Yg(String str) {
        s1.z.c.l.e(str, "countryName");
        ((EditText) this.f53397m.getValue()).setText(str);
    }

    /* renamed from: ZA */
    public final String m14020ZA() {
        EditText m14018aB = m14018aB();
        s1.z.c.l.d(m14018aB, "firstNameEditText");
        Editable text = m14018aB.getText();
        return text != null ? m13974rB(text) : "";
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: Zs */
    public void mo14019Zs(Date date, DateFormat dateFormat) {
        s1.z.c.l.e(date, "dateOfBirthday");
        s1.z.c.l.e(dateFormat, "defaultBirthdayFormat");
        m14038SA().setText(m14002fB(date, dateFormat));
    }

    @Override // p193e.p194a.p1124p.p1125a.C19147c.AbstractC19149b
    /* renamed from: a7 */
    public void mo13957a7(Gender gender) {
        s1.z.c.l.e(gender, "gender");
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        Objects.requireNonNull(c19172m);
        s1.z.c.l.e(gender, "gender");
        c19172m.f53490h = gender;
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View != null) {
            editProfileMvp$View.mo14053Kc(c19172m.m13942Nj(gender));
        }
        c19172m.m13935Uj(C19172m.C19173a.m13927a(c19172m.m13940Pj(), null, null, null, null, null, null, null, null, null, null, null, gender.name(), null, 6143));
    }

    /* renamed from: aB */
    public final EditText m14018aB() {
        return (EditText) this.f53402r.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: ah */
    public void mo14017ah(String str) {
        s1.z.c.l.e(str, "website");
        m13985nB().setText(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: ao */
    public void mo14016ao() {
        if (getContext() != null) {
            View view = (View) this.f53378P.getValue();
            if (view != null) {
                C19286f.m13689O(view);
            }
            String string = getString(C3890R.string.ProfileEditMenuSave);
            s1.z.c.l.d(string, "getString(R.string.ProfileEditMenuSave)");
            m13973sB(string, this.f53384V);
        }
    }

    @Override // p193e.p194a.p1124p.p1125a.C19135a.AbstractC19137b
    /* renamed from: ap */
    public void mo14015ap() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C19172m) abstractC19171l).m13931Yj(m14020ZA(), m14010dB(), m14026XA(), m13996jB(), m13982oB(), m14035TA(), m14030VA(), m14014bB(), m13987mB(), m14042QA());
    }

    /* renamed from: bB */
    public final String m14014bB() {
        EditText m14013cB = m14013cB();
        s1.z.c.l.d(m14013cB, "jobTitleEditText");
        Editable text = m14013cB.getText();
        return text != null ? m13974rB(text) : "";
    }

    @Override // p193e.p194a.p1124p.p1125a.C19160g.AbstractC19162b
    /* renamed from: bb */
    public void mo13950bb() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) ((C19172m) abstractC19171l).f57683a;
        if (editProfileMvp$View == null) {
            return;
        }
        editProfileMvp$View.mo14004ey();
    }

    @Override // p193e.p194a.p1124p.p1125a.C19156f.AbstractC19158b
    /* renamed from: bg */
    public void mo13951bg() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View == null) {
            return;
        }
        editProfileMvp$View.mo13975r9(c19172m.f53475C.mo13898c());
    }

    /* renamed from: cB */
    public final EditText m14013cB() {
        return (EditText) this.f53406v.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: ca */
    public void mo14012ca() {
        EditText m14038SA = m14038SA();
        s1.z.c.l.d(m14038SA, "birthdayEditText");
        Editable text = m14038SA.getText();
        if (text != null) {
            text.clear();
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: ch */
    public void mo14011ch(String str) {
        s1.z.c.l.e(str, "error");
        TextInputLayout textInputLayout = (TextInputLayout) this.f53408x.getValue();
        s1.z.c.l.d(textInputLayout, "lastNameTextInputLayout");
        textInputLayout.setErrorEnabled(true);
        textInputLayout.setError(str);
    }

    /* renamed from: dB */
    public final String m14010dB() {
        EditText m14007eB = m14007eB();
        s1.z.c.l.d(m14007eB, "lastNameEditText");
        Editable text = m14007eB.getText();
        return text != null ? m13974rB(text) : "";
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: dv */
    public void mo14009dv(String str) {
        s1.z.c.l.e(str, "street");
        m13992kB().setText(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: dw */
    public void mo14008dw() {
        AbstractC16111h abstractC16111h = this.f53387c;
        if (abstractC16111h == null) {
            s1.z.c.l.l("videoCallerId");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        abstractC16111h.mo17823w(requireActivity, RecordingScreenModes.PLAYBACK, OnboardingContext.PROFILE);
    }

    /* renamed from: eB */
    public final EditText m14007eB() {
        return (EditText) this.f53407w.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: ei */
    public void mo14006ei(String str) {
        s1.z.c.l.e(str, "city");
        m14032UA().setText(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: es */
    public void mo14005es(String str) {
        s1.z.c.l.e(str, "error");
        TextInputLayout textInputLayout = (TextInputLayout) this.f53403s.getValue();
        s1.z.c.l.d(textInputLayout, "firstNameTextInputLayout");
        textInputLayout.setErrorEnabled(true);
        textInputLayout.setError(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: ey */
    public void mo14004ey() {
        Context context = getContext();
        if (context != null) {
            C19291g.m13602O0(context);
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: f2 */
    public void mo14003f2(String str) {
        s1.z.c.l.e(str, "mainText");
        s1.z.c.l.e(str, "mainText");
        C19160g c19160g = new C19160g();
        Bundle bundle = new Bundle();
        bundle.putString("main_text", str);
        c19160g.setArguments(bundle);
        c19160g.show(getChildFragmentManager(), (String) null);
    }

    /* renamed from: fB */
    public final String m14002fB(Date date, DateFormat dateFormat) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return \"\"");
            DateFormat dateFormat2 = android.text.format.DateFormat.getDateFormat(context);
            if (dateFormat2 != null) {
                dateFormat = dateFormat2;
            }
            String format = dateFormat.format(date);
            s1.z.c.l.d(format, "dateFormat.format(date)");
            return format;
        }
        return "";
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: fh */
    public void mo14001fh() {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        startActivityForResult(new Intent(requireContext, GoogleLoginActivity.class), 3);
    }

    /* renamed from: gB */
    public final AbstractC19171l m14000gB() {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l != null) {
            return abstractC19171l;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: he */
    public void mo13999he(String str) {
        s1.z.c.l.e(str, "bio");
        m14040RA().setText(str);
    }

    /* renamed from: iB */
    public final TextView m13998iB() {
        return (TextView) this.f53377O.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: iv */
    public void mo13997iv() {
        new C19153e().show(getChildFragmentManager(), (String) null);
    }

    /* renamed from: jB */
    public final String m13996jB() {
        EditText m13992kB = m13992kB();
        s1.z.c.l.d(m13992kB, "streetEditText");
        Editable text = m13992kB.getText();
        return text != null ? m13974rB(text) : "";
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: js */
    public void mo13995js(ErrorField errorField) {
        EditText editText;
        s1.z.c.l.e(errorField, "errorField");
        int ordinal = errorField.ordinal();
        if (ordinal == 0) {
            editText = m14018aB();
        } else if (ordinal == 1) {
            editText = m14007eB();
        } else if (ordinal != 2) {
            throw new s1.i();
        } else {
            editText = m14023YA();
        }
        mo14044Pw();
        View view = (View) this.f53409y.getValue();
        s1.z.c.l.d(editText, "scrollToView");
        view.scrollTo(0, editText.getTop());
        editText.requestFocus();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: jv */
    public void mo13994jv(String str) {
        s1.z.c.l.e(str, "zipCode");
        m13981pB().setText(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo13993k(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "permission"
            s1.z.c.l.e(r0, r1)
            r0 = 0
            r5 = r0
            r0 = r4
            r1 = 0
            boolean r0 = p193e.p194a.p1066n.C18334g0.m15277B(r0, r1)
            r6 = r0
            r0 = r3
            n3.r.a.l r0 = r0.getActivity()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L46
            r0 = r7
            java.lang.String r1 = "$this$isPermissionDeniedPermanently"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            java.lang.String r1 = "permissionName"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            r1 = r4
            int r0 = p1727n3.p1807k.p1809b.C26467a.m1801a(r0, r1)
            if (r0 == 0) goto L46
            int r0 = p1727n3.p1807k.p1808a.C26413b.f74031c
            r8 = r0
            r0 = r7
            r1 = r4
            boolean r0 = r0.shouldShowRequestPermissionRationale(r1)
            if (r0 != 0) goto L46
            r0 = 1
            r8 = r0
            goto L49
        L46:
            r0 = 0
            r8 = r0
        L49:
            r0 = r5
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L5b
            r0 = r5
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L5b
            r0 = 1
            r9 = r0
        L5b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19138b.mo13993k(java.lang.String):boolean");
    }

    /* renamed from: kB */
    public final EditText m13992kB() {
        return (EditText) this.f53369C.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: kr */
    public void mo13991kr() {
        View view = (View) this.f53372J.getValue();
        s1.z.c.l.d(view, "videoCallerIdGroupView");
        C19286f.m13689O(view);
    }

    /* renamed from: lB */
    public final EditText m13990lB() {
        return (EditText) this.f53370D.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: lk */
    public void mo13989lk() {
        String string = getString(C3890R.string.ProfileEditMenuSave);
        s1.z.c.l.d(string, "getString(R.string.ProfileEditMenuSave)");
        m13973sB(string, this.f53384V);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: m */
    public void mo13988m(String str) {
        s1.z.c.l.e(str, "message");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Toast.makeText(context, str, 0).show();
        }
    }

    /* renamed from: mB */
    public final String m13987mB() {
        EditText m13985nB = m13985nB();
        s1.z.c.l.d(m13985nB, "websiteEditText");
        Editable text = m13985nB.getText();
        return text != null ? m13974rB(text) : "";
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: md */
    public void mo13986md(boolean z) {
        TextInputLayout textInputLayout = (TextInputLayout) this.f53368B.getValue();
        s1.z.c.l.d(textInputLayout, "secondaryPhoneNumberTextInputLayout");
        C19286f.m13683U(textInputLayout, z);
    }

    /* renamed from: nB */
    public final EditText m13985nB() {
        return (EditText) this.f53373K.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: nb */
    public void mo13984nb(Long l) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C20592g c20592g = this.f53386b;
        if (c20592g != null) {
            startActivityForResult(C17422k.m16057r(requireContext, l, 3, c20592g), 1);
        } else {
            s1.z.c.l.l("featuresRegistry");
            throw null;
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: o */
    public void mo13983o(String str) {
        s1.z.c.l.e(str, "toolbarTitle");
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = activity;
        hVar.setSupportActionBar((Toolbar) this.f53379Q.getValue());
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3552o(true);
        }
        ((Toolbar) this.f53379Q.getValue()).setNavigationOnClickListener(new View$OnClickListenerC19145g());
        a0 a0Var = new a0();
        a0Var.a = -1;
        ((AppBarLayout) this.f53375M.getValue()).a(new C19168i(this, a0Var, str));
    }

    /* renamed from: oB */
    public final String m13982oB() {
        EditText m13981pB = m13981pB();
        s1.z.c.l.d(m13981pB, "zipCodeEditText");
        Editable text = m13981pB.getText();
        return text != null ? m13974rB(text) : "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00fc, code lost:
        if (r21 != null) goto L80;
     */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r18, int r19, android.content.Intent r20) {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19138b.onActivityResult(int, int, android.content.Intent):void");
    }

    public final void onBackPressed() {
        EditProfileMvp$View editProfileMvp$View;
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        String m14020ZA = m14020ZA();
        String m14010dB = m14010dB();
        String m14026XA = m14026XA();
        String m13996jB = m13996jB();
        String m13982oB = m13982oB();
        String m14035TA = m14035TA();
        String m14030VA = m14030VA();
        String m14014bB = m14014bB();
        String m13987mB = m13987mB();
        String m14042QA = m14042QA();
        C19172m c19172m = (C19172m) abstractC19171l;
        Objects.requireNonNull(c19172m);
        s1.z.c.l.e(m14020ZA, "firstName");
        s1.z.c.l.e(m14010dB, "lastName");
        s1.z.c.l.e(m14026XA, AnalyticsConstants.EMAIL);
        s1.z.c.l.e(m13996jB, "streetAddress");
        s1.z.c.l.e(m13982oB, "zipCode");
        s1.z.c.l.e(m14035TA, "city");
        s1.z.c.l.e(m14030VA, "company");
        s1.z.c.l.e(m14014bB, "jobTitle");
        s1.z.c.l.e(m13987mB, "website");
        s1.z.c.l.e(m14042QA, "bio");
        if (c19172m.f53498p) {
            return;
        }
        boolean z = (s1.z.c.l.a(c19172m.m13940Pj(), new C19172m.C19173a(c19172m.m13946Jj(m14020ZA), c19172m.m13946Jj(m14010dB), c19172m.m13946Jj(m14026XA), c19172m.m13946Jj(m13996jB), c19172m.m13946Jj(m13982oB), c19172m.m13946Jj(m14035TA), c19172m.m13946Jj(m14030VA), c19172m.m13946Jj(m14014bB), c19172m.m13946Jj(m13987mB), c19172m.m13946Jj(m14042QA), c19172m.m13944Lj(), c19172m.f53490h.name(), c19172m.f53491i)) ^ true) || c19172m.m13938Rj() || c19172m.f53500r;
        if (z) {
            EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) c19172m.f57683a;
            if (editProfileMvp$View2 == null) {
                return;
            }
            editProfileMvp$View2.mo13963yi();
        } else if (z || (editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a) == null) {
        } else {
            editProfileMvp$View.mo13971t();
        }
    }

    public void onCreate(Bundle bundle) {
        C19138b.super.onCreate(bundle);
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Context applicationContext = context.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.editprofile.EditProfileComponentProvider");
            ((AbstractC19200k) applicationContext).mo13879u().mo11151a(this);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3890R.layout.fragment_edit_profile, viewGroup, false);
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        Date m13943Mj = c19172m.m13943Mj(i, i2, i3);
        c19172m.f53492j = m13943Mj;
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View != null) {
            editProfileMvp$View.mo14019Zs(m13943Mj, c19172m.f53499q);
        }
        c19172m.m13935Uj(C19172m.C19173a.m13927a(c19172m.m13940Pj(), null, null, null, null, null, null, null, null, null, null, c19172m.m13944Lj(), null, null, 7167));
    }

    public void onDestroyView() {
        C19138b.super.onDestroyView();
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l != null) {
            ((C19172m) abstractC19171l).mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        C19138b.super.onRequestPermissionsResult(i, strArr, iArr);
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        Objects.requireNonNull(c19172m);
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        if (i == 0) {
            if (c19172m.f53479K.mo13826g(strArr, iArr, "android.permission.CAMERA")) {
                EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
                if (editProfileMvp$View == null) {
                    return;
                }
                editProfileMvp$View.mo14043Q0();
                return;
            }
            EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) c19172m.f57683a;
            if (editProfileMvp$View2 == null) {
                return;
            }
            editProfileMvp$View2.mo14056Gr("android.permission.CAMERA");
        } else if (i != 1) {
        } else {
            if (c19172m.f53479K.mo13826g(strArr, iArr, "android.permission.READ_EXTERNAL_STORAGE")) {
                EditProfileMvp$View editProfileMvp$View3 = (EditProfileMvp$View) c19172m.f57683a;
                if (editProfileMvp$View3 == null) {
                    return;
                }
                editProfileMvp$View3.mo14049N0();
                return;
            }
            EditProfileMvp$View editProfileMvp$View4 = (EditProfileMvp$View) c19172m.f57683a;
            if (editProfileMvp$View4 == null) {
                return;
            }
            editProfileMvp$View4.mo14056Gr("android.permission.READ_EXTERNAL_STORAGE");
        }
    }

    public void onResume() {
        C19138b.super.onResume();
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        c19172m.f53475C.mo13897d();
        d.w2(c19172m, (f) null, (j0) null, new C19185u(c19172m, null), 3, (Object) null);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C19138b.super.onViewCreated(view, bundle);
        if (this.f53388d != null) {
            AbstractC19171l abstractC19171l = this.f53385a;
            if (abstractC19171l == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            C19172m c19172m = (C19172m) abstractC19171l;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Intent intent = requireActivity.getIntent();
        if (intent != null) {
            AbstractC19171l abstractC19171l2 = this.f53385a;
            if (abstractC19171l2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            ((C19172m) abstractC19171l2).f53486d = intent;
        }
        AbstractC19171l abstractC19171l3 = this.f53385a;
        if (abstractC19171l3 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C19172m) abstractC19171l3).mo9029Y0(this);
        ((View) this.f53381S.getValue()).setOnClickListener(new View$OnClickListenerC19139a(10, this));
        EditText m14018aB = m14018aB();
        s1.z.c.l.d(m14018aB, "firstNameEditText");
        C19291g.m13542j(m14018aB, new C19141c(0, this));
        EditText m14018aB2 = m14018aB();
        s1.z.c.l.d(m14018aB2, "firstNameEditText");
        C19291g.m13500x(m14018aB2);
        EditText m14007eB = m14007eB();
        s1.z.c.l.d(m14007eB, "lastNameEditText");
        C19291g.m13542j(m14007eB, new C19141c(1, this));
        EditText m14007eB2 = m14007eB();
        s1.z.c.l.d(m14007eB2, "lastNameEditText");
        C19291g.m13500x(m14007eB2);
        EditText m14023YA = m14023YA();
        s1.z.c.l.d(m14023YA, "emailEditText");
        C19291g.m13542j(m14023YA, new C19141c(2, this));
        EditText m13992kB = m13992kB();
        s1.z.c.l.d(m13992kB, "streetEditText");
        C19291g.m13542j(m13992kB, new C19142d(4, this));
        EditText m13981pB = m13981pB();
        s1.z.c.l.d(m13981pB, "zipCodeEditText");
        C19291g.m13542j(m13981pB, new C19142d(5, this));
        EditText m14032UA = m14032UA();
        s1.z.c.l.d(m14032UA, "cityEditText");
        C19291g.m13542j(m14032UA, new C19142d(6, this));
        EditText m14029WA = m14029WA();
        s1.z.c.l.d(m14029WA, "companyEditText");
        C19291g.m13542j(m14029WA, new C19142d(0, this));
        EditText m14013cB = m14013cB();
        s1.z.c.l.d(m14013cB, "jobTitleEditText");
        C19291g.m13542j(m14013cB, new C19142d(1, this));
        EditText m13985nB = m13985nB();
        s1.z.c.l.d(m13985nB, "websiteEditText");
        C19291g.m13542j(m13985nB, new C19142d(2, this));
        EditText m14040RA = m14040RA();
        s1.z.c.l.d(m14040RA, "bioEditText");
        C19291g.m13542j(m14040RA, new C19142d(3, this));
        ((EditText) this.f53410z.getValue()).setOnClickListener(new View$OnClickListenerC19139a(0, this));
        ((EditText) this.f53367A.getValue()).setOnClickListener(new View$OnClickListenerC19139a(1, this));
        m14038SA().setOnClickListener(new View$OnClickListenerC19139a(2, this));
        ((TextInputLayout) this.f53392h.getValue()).setEndIconOnClickListener(new View$OnClickListenerC19139a(3, this));
        ((EditText) this.f53404t.getValue()).setOnClickListener(new View$OnClickListenerC19139a(4, this));
        ((View) this.f53393i.getValue()).setOnClickListener(new View$OnClickListenerC19139a(5, this));
        m13990lB().setOnClickListener(new View$OnClickListenerC19139a(6, this));
        ((TextView) this.f53371E.getValue()).setOnClickListener(new View$OnClickListenerC19139a(7, this));
        ((View) this.f53405u.getValue()).setOnClickListener(new View$OnClickListenerC19139a(8, this));
        ((View) this.f53401q.getValue()).setOnClickListener(new View$OnClickListenerC19139a(9, this));
    }

    /* renamed from: pB */
    public final EditText m13981pB() {
        return (EditText) this.f53374L.getValue();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: pz */
    public void mo13980pz() {
        View view = (View) this.f53382T.getValue();
        s1.z.c.l.d(view, "generalLoading");
        C19286f.m13689O(view);
    }

    /* renamed from: qB */
    public final void m13979qB(TextInputLayout textInputLayout) {
        textInputLayout.setError(null);
        textInputLayout.setErrorEnabled(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
        if (r13 != null) goto L11;
     */
    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: qf */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo13978qf(android.net.Uri r10) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19138b.mo13978qf(android.net.Uri):void");
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: qs */
    public void mo13977qs(Date date, DateFormat dateFormat) {
        s1.z.c.l.e(date, "date");
        s1.z.c.l.e(dateFormat, "defaultDateFormat");
        View view = this.f53389e;
        if (view == null) {
            s1.z.c.l.l("birthdayPickerDialogTitleView");
            throw null;
        }
        View findViewById = view.findViewById(C3890R.C3892id.title);
        s1.z.c.l.d(findViewById, "birthdayPickerDialogTitl…yId<TextView>(R.id.title)");
        ((TextView) findViewById).setText(m14002fB(date, dateFormat));
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: r6 */
    public void mo13976r6(String str) {
        s1.z.c.l.e(str, "error");
        TextInputLayout textInputLayout = (TextInputLayout) this.f53400p.getValue();
        s1.z.c.l.d(textInputLayout, "emailTextInputLayout");
        textInputLayout.setErrorEnabled(true);
        textInputLayout.setError(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: r9 */
    public void mo13975r9(Intent intent) {
        s1.z.c.l.e(intent, "intent");
        startActivityForResult(intent, 7);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        if (r4 != null) goto L10;
     */
    /* renamed from: rB */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m13974rB(android.text.Editable r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = s1.f0.r.p(r0)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto Lc
            goto Le
        Lc:
            r0 = 0
            r4 = r0
        Le:
            r0 = r4
            if (r0 == 0) goto L1e
            r0 = r4
            java.lang.String r0 = r0.toString()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1e
            goto L22
        L1e:
            java.lang.String r0 = ""
            r4 = r0
        L22:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19138b.m13974rB(android.text.Editable):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: sB */
    public final void m13973sB(String str, l<? super View, s> lVar) {
        TextView m13998iB = m13998iB();
        s1.z.c.l.d(m13998iB, "saveButton");
        C19286f.m13684T(m13998iB);
        TextView m13998iB2 = m13998iB();
        s1.z.c.l.d(m13998iB2, "saveButton");
        m13998iB2.setText(str);
        TextView m13998iB3 = m13998iB();
        View$OnClickListenerC19170k view$OnClickListenerC19170k = lVar;
        if (lVar != 0) {
            view$OnClickListenerC19170k = new View$OnClickListenerC19170k(lVar);
        }
        m13998iB3.setOnClickListener(view$OnClickListenerC19170k);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: sc */
    public void mo13972sc(String str) {
        s1.z.c.l.e(str, "secondaryPhoneNumber");
        ((EditText) this.f53367A.getValue()).setText(C8605o.m28239a(str));
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    public void setPhoneNumber(String str) {
        s1.z.c.l.e(str, "phoneNumber");
        ((EditText) this.f53410z.getValue()).setText(C8605o.m28239a(str));
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: t */
    public void mo13971t() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            activity.finish();
        }
    }

    @Override // p193e.p194a.p1124p.p1125a.C19150d.AbstractC19152b
    /* renamed from: ti */
    public void mo13954ti() {
        EditProfileMvp$View editProfileMvp$View;
        AbstractC19171l abstractC19171l = this.f53385a;
        if (abstractC19171l == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19172m c19172m = (C19172m) abstractC19171l;
        c19172m.f53496n = true;
        c19172m.f53493k = null;
        c19172m.f53494l = null;
        c19172m.f53495m = null;
        EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View2 != null) {
            editProfileMvp$View2.mo14055Gu();
        }
        EditProfileMvp$View editProfileMvp$View3 = (EditProfileMvp$View) c19172m.f57683a;
        if (editProfileMvp$View3 != null) {
            editProfileMvp$View3.mo14048Nn(false);
        }
        if (!c19172m.m13938Rj() || (editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a) == null) {
            return;
        }
        editProfileMvp$View.mo13989lk();
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: tn */
    public void mo13970tn(int i, int i2, int i3, long j) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            View inflate = LayoutInflater.from(context).inflate(C3890R.layout.birthday_picker_title, (ViewGroup) null, false);
            s1.z.c.l.d(inflate, "LayoutInflater.from(cont…icker_title, null, false)");
            this.f53389e = inflate;
            DatePickerDialog datePickerDialog = new DatePickerDialog(context, C3890R.style.birthdayPickerDialog, this, i, i2, i3);
            Window window = datePickerDialog.getWindow();
            if (window != null) {
                int i4 = C3890R.C3891drawable.background_rectangle_default;
                Object obj = C26467a.f74235a;
                window.setBackgroundDrawable(C26467a.C26470c.m1789b(context, i4));
            }
            if (((LinearLayout) datePickerDialog.getDatePicker().findViewById(Resources.getSystem().getIdentifier("date_picker_header", "id", Constants.ANDROID_PLATFORM))) == null) {
                View view = this.f53389e;
                if (view == null) {
                    s1.z.c.l.l("birthdayPickerDialogTitleView");
                    throw null;
                }
                datePickerDialog.setCustomTitle(view);
            }
            datePickerDialog.setButton(-1, context.getString(C3890R.string.StrSet), datePickerDialog);
            DatePicker datePicker = datePickerDialog.getDatePicker();
            datePicker.init(i, i2, i3, new C19146h(context, i, i2, i3, j));
            s1.z.c.l.d(datePicker, "this");
            datePicker.setMaxDate(j);
            datePickerDialog.show();
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: u */
    public void mo13969u(Uri uri) {
        s1.z.c.l.e(uri, "avatarUri");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            ImageView m14045PA = m14045PA();
            m14045PA.setClickable(false);
            m14045PA.setFocusable(false);
            m14045PA.setPadding(0, 0, 0, 0);
            C21853e c21853e = (C21853e) ComponentCallbacks2C22222c.m8446e(context);
            c21853e.m8963w(new C22591h().mo8099i(AbstractC22364k.f62125b).mo8113A(true));
            s1.z.c.l.d(c21853e, "GlideApp.with(context)\n …E).skipMemoryCache(true))");
            C22234h<Drawable> m15653O0 = C17891a1.C17902k.m15653O0(c21853e, uri, -1);
            int i = C3890R.C3891drawable.ic_tcx_default_avatar_48dp;
            m15653O0.mo8087u(i).mo8097k(i).m8427O(m14045PA());
        }
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: vb */
    public void mo13968vb() {
        new C19150d().show(getChildFragmentManager(), (String) null);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: vy */
    public void mo13967vy(String str) {
        s1.z.c.l.e(str, "jobTitle");
        m14013cB().setText(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: wd */
    public void mo13966wd() {
        new C19147c().show(getChildFragmentManager(), (String) null);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: wp */
    public void mo13965wp(String str) {
        s1.z.c.l.e(str, "company");
        m14029WA().setText(str);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: xf */
    public void mo13964xf() {
        TextInputLayout textInputLayout = (TextInputLayout) this.f53400p.getValue();
        s1.z.c.l.d(textInputLayout, "emailTextInputLayout");
        m13979qB(textInputLayout);
    }

    @Override // com.truecaller.editprofile.p164ui.EditProfileMvp$View
    /* renamed from: yi */
    public void mo13963yi() {
        new C19135a().show(getChildFragmentManager(), (String) null);
    }
}

package com.truecaller.bizmon.p152ui.profile;

import android.animation.ValueAnimator;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.CameraPosition$Builder;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.p152ui.address.BusinessAddressInput;
import com.truecaller.bizmon.p152ui.openHours.OpenHoursFragment;
import com.truecaller.common.tag.TagView;
import com.truecaller.profile.data.dto.Address;
import com.truecaller.profile.data.dto.Branding;
import com.truecaller.profile.data.dto.BusinessData;
import com.truecaller.profile.data.dto.Company;
import com.truecaller.profile.data.dto.OpenHours;
import com.truecaller.profile.data.dto.Profile;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p294b.p331b.p332a.C7844b;
import p193e.p194a.p294b.p331b.p333b.AbstractC7868f;
import p193e.p194a.p294b.p331b.p333b.C7864d;
import p193e.p194a.p294b.p331b.p333b.C7869g;
import p193e.p194a.p294b.p331b.p334c.AbstractC7877d;
import p193e.p194a.p294b.p331b.p334c.AbstractC7892p;
import p193e.p194a.p294b.p331b.p334c.C7870a;
import p193e.p194a.p294b.p331b.p334c.C7873b;
import p193e.p194a.p294b.p331b.p334c.C7874c;
import p193e.p194a.p294b.p331b.p334c.C7879f;
import p193e.p194a.p294b.p331b.p334c.C7881h;
import p193e.p194a.p294b.p331b.p334c.C7884i;
import p193e.p194a.p294b.p331b.p334c.C7889m;
import p193e.p194a.p294b.p331b.p334c.C7893q;
import p193e.p194a.p294b.p331b.p334c.View$OnClickListenerC7886j;
import p193e.p194a.p294b.p331b.p334c.View$OnClickListenerC7888l;
import p193e.p194a.p294b.p331b.p334c.View$OnClickListenerC7890n;
import p193e.p194a.p294b.p331b.p334c.View$OnTouchListenerC7887k;
import p193e.p194a.p294b.p331b.p334c.View$OnTouchListenerC7891o;
import p193e.p194a.p294b.p331b.p334c.p335u.C7905c;
import p193e.p194a.p294b.p354l.AbstractC8018a;
import p193e.p194a.p294b.p354l.AbstractC8027h;
import p193e.p194a.p294b.p355m.C8106v;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p424n.C8523b;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p372b0.p430q.C8612s;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p677d3.AbstractC12589h;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p798g5.AbstractC14537p;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.u.w;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0006\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� Î\u00012\u00020\u00012\u00020\u0002:\u0002\u0082\u0001B\b¢\u0006\u0005\bÍ\u0001\u0010\u0016J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\t\u0010\u0007J'\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001f\u001a\u00020\u00052\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0016J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\"\u0010\u0007J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0016J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0016J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0003H\u0016¢\u0006\u0004\b&\u0010\u0007J\u0017\u0010'\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0003H\u0016¢\u0006\u0004\b'\u0010\u0007J\u0019\u0010*\u001a\u00020\u00052\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b,\u0010+J1\u00101\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u00032\b\u0010.\u001a\u0004\u0018\u00010\u00032\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\u0003H\u0016¢\u0006\u0004\b1\u00102J\u001f\u00106\u001a\u00020\u00052\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u000203H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0005H\u0016¢\u0006\u0004\b8\u0010\u0016J\u000f\u00109\u001a\u00020\u0005H\u0016¢\u0006\u0004\b9\u0010\u0016J\u000f\u0010:\u001a\u00020\u0005H\u0016¢\u0006\u0004\b:\u0010\u0016J\u000f\u0010;\u001a\u00020\u0005H\u0016¢\u0006\u0004\b;\u0010\u0016J\u0017\u0010=\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\fH\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0005H\u0016¢\u0006\u0004\b?\u0010\u0016J)\u0010D\u001a\u00020\u00052\u0006\u0010@\u001a\u00020\f2\u0006\u0010A\u001a\u00020\f2\b\u0010C\u001a\u0004\u0018\u00010BH\u0014¢\u0006\u0004\bD\u0010EJ\u0017\u0010F\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0003H\u0016¢\u0006\u0004\bF\u0010\u0007J\u000f\u0010G\u001a\u00020\u0005H\u0016¢\u0006\u0004\bG\u0010\u0016J\u001f\u0010I\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\f2\u0006\u0010H\u001a\u00020\u0003H\u0016¢\u0006\u0004\bI\u0010JJ\u0017\u0010K\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u0003H\u0016¢\u0006\u0004\bK\u0010\u0007J\u0017\u0010L\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u0003H\u0016¢\u0006\u0004\bL\u0010\u0007J\u0017\u0010M\u001a\u00020\u00052\u0006\u0010H\u001a\u00020\u0003H\u0016¢\u0006\u0004\bM\u0010\u0007J\u000f\u0010N\u001a\u00020\u0005H\u0016¢\u0006\u0004\bN\u0010\u0016J\u0017\u0010Q\u001a\u00020\u00052\u0006\u0010P\u001a\u00020OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010U\u001a\u00020T2\u0006\u0010S\u001a\u00020\u0003H\u0016¢\u0006\u0004\bU\u0010VJ#\u0010Y\u001a\u00020\u00052\b\b\u0001\u0010W\u001a\u00020\f2\b\b\u0001\u0010X\u001a\u00020\fH\u0016¢\u0006\u0004\bY\u0010ZJ#\u0010\\\u001a\u00020\u00052\b\b\u0001\u0010[\u001a\u00020\f2\b\b\u0001\u0010X\u001a\u00020\fH\u0016¢\u0006\u0004\b\\\u0010ZJ\u0017\u0010]\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\fH\u0016¢\u0006\u0004\b]\u0010>J\u0017\u0010^\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\fH\u0016¢\u0006\u0004\b^\u0010>J\u0017\u0010_\u001a\u00020\u00052\u0006\u0010<\u001a\u00020\fH\u0016¢\u0006\u0004\b_\u0010>J\u000f\u0010`\u001a\u00020\u0005H\u0016¢\u0006\u0004\b`\u0010\u0016J\u000f\u0010a\u001a\u00020\u0005H\u0016¢\u0006\u0004\ba\u0010\u0016J\u000f\u0010b\u001a\u00020\u0005H\u0016¢\u0006\u0004\bb\u0010\u0016J\u0017\u0010c\u001a\u00020\u00052\u0006\u0010X\u001a\u00020\fH\u0016¢\u0006\u0004\bc\u0010>J!\u0010e\u001a\u00020\u00052\b\b\u0001\u0010X\u001a\u00020\f2\u0006\u0010d\u001a\u00020TH\u0016¢\u0006\u0004\be\u0010fJ\u001f\u0010g\u001a\u00020\u00052\u0006\u0010X\u001a\u00020\u00032\u0006\u0010d\u001a\u00020TH\u0016¢\u0006\u0004\bg\u0010hJ\u000f\u0010i\u001a\u00020\u0005H\u0016¢\u0006\u0004\bi\u0010\u0016J\u000f\u0010j\u001a\u00020\u0005H\u0016¢\u0006\u0004\bj\u0010\u0016J\u000f\u0010k\u001a\u00020\u0005H\u0016¢\u0006\u0004\bk\u0010\u0016J\u000f\u0010l\u001a\u00020\u0005H\u0016¢\u0006\u0004\bl\u0010\u0016J\u000f\u0010m\u001a\u00020\u0005H\u0016¢\u0006\u0004\bm\u0010\u0016J\u000f\u0010n\u001a\u00020\u0005H\u0016¢\u0006\u0004\bn\u0010\u0016R\"\u0010v\u001a\u00020o8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u001c\u0010|\u001a\b\u0012\u0004\u0012\u00020\u00030y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0017\u0010\u0080\u0001\u001a\u00020}8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b~\u0010\u007fR1\u0010\u0089\u0001\u001a\u00030\u0081\u00018\u0006@\u0006X\u0087.¢\u0006\u001f\n\u0006\b\u0082\u0001\u0010\u0083\u0001\u0012\u0005\b\u0088\u0001\u0010\u0016\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R*\u0010\u0091\u0001\u001a\u00030\u008a\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u008b\u0001\u0010\u008c\u0001\u001a\u0006\b\u008d\u0001\u0010\u008e\u0001\"\u0006\b\u008f\u0001\u0010\u0090\u0001R*\u0010\u0099\u0001\u001a\u00030\u0092\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u0093\u0001\u0010\u0094\u0001\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001\"\u0006\b\u0097\u0001\u0010\u0098\u0001R*\u0010¡\u0001\u001a\u00030\u009a\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b\u009b\u0001\u0010\u009c\u0001\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001\"\u0006\b\u009f\u0001\u0010 \u0001R*\u0010©\u0001\u001a\u00030¢\u00018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0006\b£\u0001\u0010¤\u0001\u001a\u0006\b¥\u0001\u0010¦\u0001\"\u0006\b§\u0001\u0010¨\u0001R\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010ª\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u001a\u0010±\u0001\u001a\u00030®\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u001c\u0010µ\u0001\u001a\u0005\u0018\u00010²\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u001a\u0010¹\u0001\u001a\u00030¶\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u0017\u0010%\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bº\u0001\u0010xR1\u0010Ã\u0001\u001a\u00030»\u00018\u0006@\u0006X\u0087.¢\u0006\u001f\n\u0006\b¼\u0001\u0010½\u0001\u0012\u0005\bÂ\u0001\u0010\u0016\u001a\u0006\b¾\u0001\u0010¿\u0001\"\u0006\bÀ\u0001\u0010Á\u0001R\u001a\u0010Ç\u0001\u001a\u00030Ä\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bÅ\u0001\u0010Æ\u0001R1\u0010Ì\u0001\u001a\u00030»\u00018\u0006@\u0006X\u0087.¢\u0006\u001f\n\u0006\bÈ\u0001\u0010½\u0001\u0012\u0005\bË\u0001\u0010\u0016\u001a\u0006\bÉ\u0001\u0010¿\u0001\"\u0006\bÊ\u0001\u0010Á\u0001¨\u0006Ï\u0001"}, d2 = {"Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;", "Ln3/b/a/h;", "Le/a/b/b/c/p;", "", "backgroundColor", "Ls1/s;", "va", "(Ljava/lang/String;)V", "logo", "ua", "Landroid/view/View;", ViewAction.VIEW, "", "prevHeight", "targetHeight", "ta", "(Landroid/view/View;II)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "a2", "Lcom/truecaller/profile/data/dto/Profile;", "profile", "D9", "(Lcom/truecaller/profile/data/dto/Profile;)V", "", "Lcom/truecaller/profile/data/dto/OpenHours;", "openHours", "n7", "(Ljava/util/List;)V", "ca", "M9", "E2", "P2", RemoteMessageConst.Notification.COLOR, "f6", "Z3", "Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;", "address", "F3", "(Lcom/truecaller/bizmon/ui/address/BusinessAddressInput;)V", "N1", "street", "zipCode", "city", "countryName", "t8", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "latitude", "longitude", "t5", "(DD)V", "I5", "B8", "x1", "w1", "position", "h9", "(I)V", "O2", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "l2", "I7", "picture", "s4", "(ILjava/lang/String;)V", "S", "M8", "s3", "j1", "Le/a/b0/p/c;", RemoteMessageConst.Notification.TAG, "y1", "(Le/a/b0/p/c;)V", AnalyticsConstants.EMAIL, "", "k8", "(Ljava/lang/String;)Z", "textField", "errorMessage", "I2", "(II)V", "inputField", "K2", "l4", "e7", "m2", "i9", "a0", "i2", "A7", "recoverable", "n8", "(IZ)V", "C9", "(Ljava/lang/String;Z)V", "b0", "onBackPressed", "da", "cancel", "H3", "i1", "Le/a/b0/e/l;", "e", "Le/a/b0/e/l;", "getAccountManager", "()Le/a/b0/e/l;", "setAccountManager", "(Le/a/b0/e/l;)V", "accountManager", "l", "Ljava/lang/String;", "", "n", "Ljava/util/Set;", "pictures", "Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;", "k", "Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;", "openHoursFragment", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "getFeaturesRegistry$annotations", "featuresRegistry", "Le/a/b0/o/a;", AbstractC2405c.f7629a, "Le/a/b0/o/a;", "getCoreSettings", "()Le/a/b0/o/a;", "setCoreSettings", "(Le/a/b0/o/a;)V", "coreSettings", "Le/a/b0/e/r/a;", "d", "Le/a/b0/e/r/a;", "getAccountSettings", "()Le/a/b0/e/r/a;", "setAccountSettings", "(Le/a/b0/e/r/a;)V", "accountSettings", "Le/a/b/b/c/q;", "a", "Le/a/b/b/c/q;", "qa", "()Le/a/b/b/c/q;", "setPresenter", "(Le/a/b/b/c/q;)V", "presenter", "Le/a/q2/a;", "f", "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "", "o", "Ljava/lang/Long;", "tagId", "Le/a/b/m/v;", "q", "Le/a/b/m/v;", "binding", "Landroid/app/ProgressDialog;", "p", "Landroid/app/ProgressDialog;", "loadingProgressDialog", "Le/a/b/b/c/a;", "i", "Le/a/b/b/c/a;", "colorsAdapter", "m", "Ls1/w/f;", "g", "Ls1/w/f;", "getAsyncCoroutineContext", "()Ls1/w/f;", "setAsyncCoroutineContext", "(Ls1/w/f;)V", "getAsyncCoroutineContext$annotations", "asyncCoroutineContext", "Le/a/b/b/c/c;", "j", "Le/a/b/b/c/c;", "picturesAdapter", "h", "ra", "setUiCoroutineContext", "getUiCoroutineContext$annotations", "uiCoroutineContext", "<init>", "r", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity.class */
public final class CreateBusinessProfileActivity extends h implements AbstractC7892p {

    /* renamed from: r */
    public static final C3532b f10399r = new C3532b(null);
    @Inject

    /* renamed from: a */
    public C7893q f10400a;
    @Inject

    /* renamed from: b */
    public C20592g f10401b;
    @Inject

    /* renamed from: c */
    public AbstractC8541a f10402c;
    @Inject

    /* renamed from: d */
    public AbstractC8438a f10403d;
    @Inject

    /* renamed from: e */
    public AbstractC8432l f10404e;
    @Inject

    /* renamed from: f */
    public AbstractC19462a f10405f;
    @Inject

    /* renamed from: g */
    public f f10406g;
    @Inject

    /* renamed from: h */
    public f f10407h;

    /* renamed from: i */
    public C7870a f10408i;

    /* renamed from: j */
    public C7874c f10409j;

    /* renamed from: k */
    public OpenHoursFragment f10410k;

    /* renamed from: l */
    public String f10411l;

    /* renamed from: m */
    public String f10412m = "";

    /* renamed from: n */
    public Set<String> f10413n = new LinkedHashSet();

    /* renamed from: o */
    public Long f10414o;

    /* renamed from: p */
    public ProgressDialog f10415p;

    /* renamed from: q */
    public C8106v f10416q;

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$a.class */
    public static final class DialogInterface$OnClickListenerC3531a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public static final DialogInterface$OnClickListenerC3531a f10417b = new DialogInterface$OnClickListenerC3531a(0);

        /* renamed from: c */
        public static final DialogInterface$OnClickListenerC3531a f10418c = new DialogInterface$OnClickListenerC3531a(1);

        /* renamed from: a */
        public final /* synthetic */ int f10419a;

        public DialogInterface$OnClickListenerC3531a(int i) {
            this.f10419a = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f10419a;
            if (i2 == 0 || i2 == 1) {
                return;
            }
            throw null;
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$b.class */
    public static final class C3532b {
        public C3532b(s1.z.c.f fVar) {
        }

        /* renamed from: a */
        public final Intent m35823a(Context context, boolean z, boolean z2, boolean z3) {
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(context, CreateBusinessProfileActivity.class);
            intent.putExtra("arg_from_wizard", z);
            intent.putExtra("arg_editing", z2);
            intent.putExtra("arg_migrating", z3);
            return intent;
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$c */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$c.class */
    public static final class View$OnClickListenerC3533c implements View.OnClickListener {
        public View$OnClickListenerC3533c() {
            CreateBusinessProfileActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC7892p abstractC7892p = (AbstractC7892p) CreateBusinessProfileActivity.this.m35829qa().f57683a;
            if (abstractC7892p != null) {
                abstractC7892p.mo29160da();
            }
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$d */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$d.class */
    public static final class C3534d implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ View f10421a;

        public C3534d(View view) {
            this.f10421a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            ViewGroup.LayoutParams layoutParams = this.f10421a.getLayoutParams();
            l.d(valueAnimator, "animation");
            Object animatedValue = valueAnimator.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            layoutParams.height = ((Integer) animatedValue).intValue();
            this.f10421a.requestLayout();
        }
    }

    @e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$resizeLogo$1", f = "CreateBusinessProfileActivity.kt", l = {577, 581}, m = "invokeSuspend")
    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$e */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e.class */
    public static final class C3535e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f10422e;

        /* renamed from: g */
        public final /* synthetic */ String f10424g;

        @e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$resizeLogo$1$3", f = "CreateBusinessProfileActivity.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$e$a */
        /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$a.class */
        public static final class C3536a extends i implements p<i0, d<? super s>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3536a(d dVar) {
                super(2, dVar);
                C3535e.this = r5;
            }

            /* renamed from: i */
            public final d<s> m35819i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C3536a(dVar);
            }

            /* renamed from: k */
            public final Object m35818k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C3535e c3535e = C3535e.this;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                AbstractC7892p abstractC7892p = (AbstractC7892p) CreateBusinessProfileActivity.this.m35829qa().f57683a;
                if (abstractC7892p != null) {
                    abstractC7892p.mo29170I7();
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m35817s(Object obj) {
                C25225a.m3932a3(obj);
                AbstractC7892p abstractC7892p = (AbstractC7892p) CreateBusinessProfileActivity.this.m35829qa().f57683a;
                if (abstractC7892p != null) {
                    abstractC7892p.mo29170I7();
                }
                return s.a;
            }
        }

        @e(c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$resizeLogo$1$2$1", f = "CreateBusinessProfileActivity.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$e$b */
        /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b.class */
        public static final class C3537b extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public final /* synthetic */ String f10426e;

            /* renamed from: f */
            public final /* synthetic */ C3535e f10427f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3537b(String str, d dVar, C3535e c3535e) {
                super(2, dVar);
                this.f10426e = str;
                this.f10427f = c3535e;
            }

            /* renamed from: i */
            public final d<s> m35816i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C3537b(this.f10426e, dVar, this.f10427f);
            }

            /* renamed from: k */
            public final Object m35815k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                String str = this.f10426e;
                C3535e c3535e = this.f10427f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                C7893q m35829qa = CreateBusinessProfileActivity.this.m35829qa();
                l.d(str, "it");
                Objects.requireNonNull(m35829qa);
                l.e(str, "logo");
                if (str.length() > 0) {
                    AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
                    if (abstractC7892p != null) {
                        abstractC7892p.mo29167M9(str);
                    }
                } else {
                    AbstractC7892p abstractC7892p2 = (AbstractC7892p) m35829qa.f57683a;
                    if (abstractC7892p2 != null) {
                        abstractC7892p2.mo29170I7();
                    }
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m35814s(Object obj) {
                C25225a.m3932a3(obj);
                C7893q m35829qa = CreateBusinessProfileActivity.this.m35829qa();
                String str = this.f10426e;
                l.d(str, "it");
                Objects.requireNonNull(m35829qa);
                l.e(str, "logo");
                if (str.length() > 0) {
                    AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
                    if (abstractC7892p != null) {
                        abstractC7892p.mo29167M9(str);
                    }
                } else {
                    AbstractC7892p abstractC7892p2 = (AbstractC7892p) m35829qa.f57683a;
                    if (abstractC7892p2 != null) {
                        abstractC7892p2.mo29170I7();
                    }
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3535e(String str, d dVar) {
            super(2, dVar);
            CreateBusinessProfileActivity.this = r5;
            this.f10424g = str;
        }

        /* renamed from: i */
        public final d<s> m35822i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3535e(this.f10424g, dVar);
        }

        /* renamed from: k */
        public final Object m35821k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3535e(this.f10424g, dVar).m35820s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00a5 A[Catch: IOException -> 0x00d8, TRY_ENTER, TryCatch #0 {IOException -> 0x00d8, blocks: (B:11:0x0028, B:13:0x0033, B:15:0x0062, B:19:0x0070, B:23:0x007e, B:28:0x0091, B:34:0x00a5, B:38:0x00ce), top: B:46:0x000a }] */
        /* JADX WARN: Type inference failed for: r0v14, types: [android.content.Context, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
        /* JADX WARN: Type inference failed for: r0v21, types: [android.content.Context, java.lang.Object, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m35820s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity.C3535e.m35820s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$f */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$f.class */
    public static final class DialogInterface$OnClickListenerC3538f implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC3538f() {
            CreateBusinessProfileActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC7892p abstractC7892p = (AbstractC7892p) CreateBusinessProfileActivity.this.m35829qa().f57683a;
            if (abstractC7892p != null) {
                abstractC7892p.cancel();
            }
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$g */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$g.class */
    public static final class DialogInterface$OnClickListenerC3539g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC3539g f10429a = new DialogInterface$OnClickListenerC3539g();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$h */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$h.class */
    public static final class MenuItem$OnMenuItemClickListenerC3540h implements MenuItem.OnMenuItemClickListener {
        public MenuItem$OnMenuItemClickListenerC3540h() {
            CreateBusinessProfileActivity.this = r4;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            AbstractC7892p abstractC7892p = (AbstractC7892p) CreateBusinessProfileActivity.this.m35829qa().f57683a;
            if (abstractC7892p != null) {
                abstractC7892p.mo29158i1();
                return true;
            }
            return true;
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$i */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$i.class */
    public static final class View$OnClickListenerC3541i implements View.OnClickListener {
        public View$OnClickListenerC3541i() {
            CreateBusinessProfileActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7893q m35829qa = CreateBusinessProfileActivity.this.m35829qa();
            m35829qa.f24479e = null;
            AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
            if (abstractC7892p != null) {
                abstractC7892p.mo29178B8();
            }
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$j */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$j.class */
    public static final class DialogInterface$OnClickListenerC3542j implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC3542j() {
            CreateBusinessProfileActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            CreateBusinessProfileActivity.this.m35829qa().m29142Ij();
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$k */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$k.class */
    public static final class DialogInterface$OnClickListenerC3543k implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC3543k() {
            CreateBusinessProfileActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            CreateBusinessProfileActivity.this.m35829qa().m29142Ij();
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$l */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$l.class */
    public static final class DialogInterface$OnClickListenerC3544l implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC3544l f10434a = new DialogInterface$OnClickListenerC3544l();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$m */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$m.class */
    public static final class DialogInterface$OnClickListenerC3545m implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC3545m() {
            CreateBusinessProfileActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            ?? r0 = CreateBusinessProfileActivity.this;
            String uri = C8612s.m28217e(r0).toString();
            l.d(uri, "ImageUtils.getCapturedImageUri(this).toString()");
            C3532b c3532b = CreateBusinessProfileActivity.f10399r;
            r0.m35825ua(uri);
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$n */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$n.class */
    public static final class DialogInterface$OnClickListenerC3546n implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC3546n f10436a = new DialogInterface$OnClickListenerC3546n();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$o */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$o.class */
    public static final class C3547o implements OnMapReadyCallback {

        /* renamed from: b */
        public final /* synthetic */ double f10438b;

        /* renamed from: c */
        public final /* synthetic */ double f10439c;

        public C3547o(double d, double d2) {
            CreateBusinessProfileActivity.this = r5;
            this.f10438b = d;
            this.f10439c = d2;
        }

        @Override // com.google.android.gms.maps.OnMapReadyCallback
        /* renamed from: O3 */
        public final void mo29248O3(GoogleMap googleMap) {
            C8106v c8106v = CreateBusinessProfileActivity.this.f10416q;
            if (c8106v == null) {
                l.l("binding");
                throw null;
            }
            CardView cardView = c8106v.f25140v;
            l.d(cardView, "binding.mapCardView");
            C19286f.m13684T(cardView);
            l.d(googleMap, "it");
            UiSettings m38708a = googleMap.m38708a();
            l.d(m38708a, "it.uiSettings");
            m38708a.m38700a(false);
            CameraPosition$Builder cameraPosition$Builder = new CameraPosition$Builder();
            cameraPosition$Builder.f6250b = 17.0f;
            cameraPosition$Builder.f6249a = new LatLng(this.f10438b, this.f10439c);
            googleMap.m38707b(CameraUpdateFactory.m38710a(cameraPosition$Builder.m38628a()));
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$p */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$p.class */
    public static final class DialogInterface$OnClickListenerC3548p implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC3548p() {
            CreateBusinessProfileActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C7893q m35829qa = CreateBusinessProfileActivity.this.m35829qa();
            m35829qa.f24482h = true;
            AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
            if (abstractC7892p != null) {
                abstractC7892p.mo29165P2();
            }
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$q */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$q.class */
    public static final class DialogInterface$OnClickListenerC3549q implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC3549q f10441a = new DialogInterface$OnClickListenerC3549q();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$r */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$r.class */
    public static final class DialogInterface$OnClickListenerC3550r implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String f10443b;

        public DialogInterface$OnClickListenerC3550r(String str) {
            CreateBusinessProfileActivity.this = r4;
            this.f10443b = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C7893q m35829qa = CreateBusinessProfileActivity.this.m35829qa();
            String str = this.f10443b;
            Objects.requireNonNull(m35829qa);
            l.e(str, "picture");
            m35829qa.f24483i.add(str);
            AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
            if (abstractC7892p != null) {
                abstractC7892p.mo29148s3(str);
            }
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$s */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$s.class */
    public static final class DialogInterface$OnClickListenerC3551s implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC3551s f10444a = new DialogInterface$OnClickListenerC3551s();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: pa */
    public static final void m35830pa(CreateBusinessProfileActivity createBusinessProfileActivity) {
        String str = createBusinessProfileActivity.f10411l;
        C7893q c7893q = createBusinessProfileActivity.f10400a;
        if (str != null) {
            if (c7893q == null) {
                l.l("presenter");
                throw null;
            }
            AbstractC7892p abstractC7892p = (AbstractC7892p) c7893q.f57683a;
            if (abstractC7892p == null) {
                return;
            }
            abstractC7892p.mo29175E2();
        } else if (c7893q == null) {
            l.l("presenter");
            throw null;
        } else {
            AbstractC7892p abstractC7892p2 = (AbstractC7892p) c7893q.f57683a;
            if (abstractC7892p2 == null) {
                return;
            }
            abstractC7892p2.mo29161ca();
        }
    }

    /* renamed from: sa */
    public static final Intent m35827sa(Context context, boolean z, boolean z2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, CreateBusinessProfileActivity.class);
        intent.putExtra("arg_from_wizard", z);
        intent.putExtra("arg_editing", z2);
        intent.putExtra("arg_migrating", false);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: A7 */
    public void mo29179A7(int i) {
        m35831b0();
        Toast.makeText((Context) this, i, 1).show();
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: B8 */
    public void mo29178B8() {
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        TextView textView = c8106v.f25122d;
        l.d(textView, "addressEditText");
        textView.setText((CharSequence) null);
        CardView cardView = c8106v.f25140v;
        l.d(cardView, "mapCardView");
        C19286f.m13689O(cardView);
        ImageButton imageButton = c8106v.f25128j;
        l.d(imageButton, "deleteAddressButton");
        C19286f.m13689O(imageButton);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: C9 */
    public void mo29177C9(String str, boolean z) {
        l.e(str, "errorMessage");
        m35831b0();
        g$a g_a = new g$a(this);
        g_a.f70854a.f156f = str;
        if (z) {
            g_a.m3660i(C3478R.string.StrRetry, new DialogInterface$OnClickListenerC3542j());
            g_a.m3662g(C3478R.string.StrCancel, DialogInterface$OnClickListenerC3531a.f10417b);
        } else {
            g_a.m3662g(C3478R.string.StrOK, DialogInterface$OnClickListenerC3531a.f10418c);
        }
        g_a.m3652q();
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: D9 */
    public void mo29176D9(Profile profile) {
        l.e(profile, "profile");
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        c8106v.f25133o.setText(profile.getFirstName());
        c8106v.f25136r.setText(profile.getLastName());
        BusinessData businessData = profile.getBusinessData();
        if (businessData == null) {
            return;
        }
        c8106v.f25143y.setText(businessData.getCompany().getName());
        c8106v.f25129k.setText(businessData.getAbout());
        c8106v.f25131m.setText(businessData.getOnlineIds().getEmail());
        String jobTitle = businessData.getJobTitle();
        if (jobTitle != null) {
            c8106v.f25130l.setText(jobTitle);
        }
        String url = businessData.getOnlineIds().getUrl();
        if (url != null) {
            c8106v.f25118L.setText(url);
        }
        String facebookId = businessData.getOnlineIds().getFacebookId();
        if (facebookId != null) {
            c8106v.f25132n.setText(facebookId);
        }
        String twitterId = businessData.getOnlineIds().getTwitterId();
        if (twitterId != null) {
            c8106v.f25117K.setText(twitterId);
        }
        String size = businessData.getCompany().getSize();
        if (size == null) {
            return;
        }
        Spinner spinner = c8106v.f25113C;
        Locale locale = Locale.getDefault();
        l.d(locale, "Locale.getDefault()");
        String upperCase = size.toUpperCase(locale);
        l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        spinner.setSelection(BusinessSize.valueOf(upperCase).ordinal() + 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: E2 */
    public void mo29175E2() {
        g$a g_a = new g$a(this);
        g_a.m3664e(C3478R.string.BusinessProfile_RemoveLogoWarningMessage);
        g_a.m3660i(C3478R.string.StrOK, new DialogInterface$OnClickListenerC3548p());
        g_a.m3662g(C3478R.string.StrCancel, DialogInterface$OnClickListenerC3549q.f10441a);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: F3 */
    public void mo29174F3(BusinessAddressInput businessAddressInput) {
        Objects.requireNonNull(C7844b.f24398g);
        Fragment c7844b = new C7844b();
        Bundle bundle = new Bundle();
        bundle.putParcelable("arg_address", businessAddressInput);
        c7844b.setArguments(bundle);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        int i = C3478R.anim.fast_slide_in_up;
        int i2 = C3478R.anim.fast_slide_out_down;
        c26907a.m1118o(i, i2, i, i2);
        C26907a c26907a2 = c26907a;
        FragmentManager fragmentManager = c7844b.mFragmentManager;
        if (fragmentManager != null && fragmentManager != c26907a2.f75269q) {
            StringBuilder m8728C = C22128a.m8728C("Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment ");
            m8728C.append(c7844b.toString());
            m8728C.append(" is already attached to a FragmentManager.");
            throw new IllegalStateException(m8728C.toString());
        }
        c26907a2.m1129d(new AbstractC26924f0.C26925a(8, c7844b));
        c26907a2.m1120m(C3478R.C3480id.businessAddressPlaceholder, c7844b, null);
        c26907a2.m1128e(C7844b.class.getName());
        c26907a2.mo1126g();
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: H3 */
    public void mo29173H3() {
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        Toolbar toolbar = c8106v.f25116J;
        l.d(toolbar, "binding.toolbar");
        toolbar.getMenu().add(C3478R.string.BusinessProfile_ConvertToPrivate).setOnMenuItemClickListener(new MenuItem$OnMenuItemClickListenerC3540h());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: I2 */
    public void mo29172I2(int i, int i2) {
        TextView textView = (TextView) findViewById(i);
        textView.setError(getString(i2));
        textView.requestFocus();
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: I5 */
    public void mo29171I5() {
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        ImageButton imageButton = c8106v.f25128j;
        l.d(imageButton, "binding.deleteAddressButton");
        C19286f.m13684T(imageButton);
        C8106v c8106v2 = this.f10416q;
        if (c8106v2 != null) {
            c8106v2.f25128j.setOnClickListener(new View$OnClickListenerC3541i());
        } else {
            l.l("binding");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: I7 */
    public void mo29170I7() {
        g$a g_a = new g$a(this);
        g_a.m3664e(C3478R.string.BusinessProfile_ErrorCroppingLogoWarningMessage);
        g_a.m3660i(C3478R.string.StrOK, new DialogInterface$OnClickListenerC3545m());
        g_a.m3662g(C3478R.string.StrCancel, DialogInterface$OnClickListenerC3546n.f10436a);
        g_a.m3652q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: K2 */
    public void mo29169K2(int i, int i2) {
        EditText editText = (EditText) findViewById(i);
        editText.setError(getString(i2));
        editText.requestFocus();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: M8 */
    public void mo29168M8(String str) {
        l.e(str, "picture");
        g$a g_a = new g$a(this);
        g_a.m3664e(C3478R.string.BusinessProfile_RemovePictureWarningMessage);
        g_a.m3660i(C3478R.string.StrOK, new DialogInterface$OnClickListenerC3550r(str));
        g_a.m3662g(C3478R.string.StrCancel, DialogInterface$OnClickListenerC3551s.f10444a);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: M9 */
    public void mo29167M9(String str) {
        l.e(str, "logo");
        this.f10411l = str;
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        Button button = c8106v.f25137s;
        l.d(button, "binding.logoButton");
        C19286f.m13689O(button);
        C22234h mo8414k = C17891a1.C17902k.m15655N1(this).mo8414k();
        mo8414k.mo8420V(str);
        C21852d mo8102f = ((C21852d) mo8414k).mo8102f();
        C8106v c8106v2 = this.f10416q;
        if (c8106v2 != null) {
            mo8102f.m8427O(c8106v2.f25139u);
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7851d
    /* renamed from: N1 */
    public void mo29250N1(BusinessAddressInput businessAddressInput) {
        l.e(businessAddressInput, "address");
        C7893q c7893q = this.f10400a;
        if (c7893q != null) {
            c7893q.m29141Jj(businessAddressInput);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: O2 */
    public void mo29166O2() {
        try {
            startActivityForResult(C8612s.m28219c(), 1);
        } catch (ActivityNotFoundException e) {
            C8613t.m28201k(this, e);
        }
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: P2 */
    public void mo29165P2() {
        this.f10411l = null;
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        Button button = c8106v.f25137s;
        l.d(button, "binding.logoButton");
        C19286f.m13684T(button);
        C8106v c8106v2 = this.f10416q;
        if (c8106v2 != null) {
            c8106v2.f25139u.setImageDrawable(null);
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7902t
    /* renamed from: S */
    public void mo29135S(String str) {
        l.e(str, "picture");
        C7893q c7893q = this.f10400a;
        if (c7893q == null) {
            l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c7893q);
        l.e(str, "picture");
        AbstractC7892p abstractC7892p = (AbstractC7892p) c7893q.f57683a;
        if (abstractC7892p == null) {
            return;
        }
        abstractC7892p.mo29168M8(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: Z3 */
    public void mo29164Z3(String str) {
        l.e(str, RemoteMessageConst.Notification.COLOR);
        this.f10412m = str;
        C7870a c7870a = this.f10408i;
        if (c7870a == null) {
            l.l("colorsAdapter");
            throw null;
        }
        l.e(str, RemoteMessageConst.Notification.COLOR);
        l.e(str, RemoteMessageConst.Notification.COLOR);
        List<String> list = C7873b.f24449a;
        int indexOf = list.indexOf(str);
        if (indexOf == -1) {
            indexOf = 0;
        }
        c7870a.f24444a = indexOf;
        c7870a.notifyDataSetChanged();
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        RecyclerView recyclerView = c8106v.f25125g;
        if (this.f10408i == null) {
            l.l("colorsAdapter");
            throw null;
        }
        l.e(str, RemoteMessageConst.Notification.COLOR);
        recyclerView.scrollToPosition(list.indexOf(str));
        m35824va(str);
        Window window = getWindow();
        l.d(window, "window");
        window.setStatusBarColor(C12864a2.m22536v(Color.parseColor(str)));
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: a0 */
    public void mo29163a0() {
        ProgressDialog progressDialog = this.f10415p;
        if (progressDialog != null) {
            progressDialog.show();
        }
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: a2 */
    public void mo29162a2() {
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        TextView textView = c8106v.f25134p;
        l.d(textView, "binding.footnoteTextView");
        textView.setVisibility(0);
        C8106v c8106v2 = this.f10416q;
        if (c8106v2 == null) {
            l.l("binding");
            throw null;
        }
        TextView textView2 = c8106v2.f25134p;
        l.d(textView2, "binding.footnoteTextView");
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* renamed from: b0 */
    public void m35831b0() {
        ProgressDialog progressDialog = this.f10415p;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        this.f10415p = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: ca */
    public void mo29161ca() {
        try {
            startActivityForResult(C8612s.m28219c(), 0);
        } catch (ActivityNotFoundException e) {
            C8613t.m28201k(this, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    public void cancel() {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: da */
    public void mo29160da() {
        g$a g_a = new g$a(this);
        g_a.m3656m(C3478R.string.BusinessProfile_CancelWarningTitle);
        g_a.m3664e(C3478R.string.BusinessProfile_CancelWarningMessage);
        g_a.m3660i(C3478R.string.BusinessProfile_CancelWarningPositive, new DialogInterface$OnClickListenerC3538f());
        g_a.m3662g(C3478R.string.StrCancel, DialogInterface$OnClickListenerC3539g.f10429a);
        g_a.m3652q();
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: e7 */
    public void mo29159e7(int i) {
        OpenHoursFragment openHoursFragment = this.f10410k;
        if (openHoursFragment == null) {
            l.l("openHoursFragment");
            throw null;
        }
        C7864d c7864d = openHoursFragment.f10379b;
        if (c7864d == null) {
            l.l("openHoursAdapter");
            throw null;
        }
        c7864d.f24437e = i;
        c7864d.f24435c = true;
        c7864d.notifyItemChanged(i);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7880g
    /* renamed from: f6 */
    public void mo29195f6(String str) {
        l.e(str, RemoteMessageConst.Notification.COLOR);
        C7893q c7893q = this.f10400a;
        if (c7893q == null) {
            l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c7893q);
        l.e(str, RemoteMessageConst.Notification.COLOR);
        AbstractC7892p abstractC7892p = (AbstractC7892p) c7893q.f57683a;
        if (abstractC7892p == null) {
            return;
        }
        abstractC7892p.mo29164Z3(str);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7902t
    /* renamed from: h9 */
    public void mo29134h9(int i) {
        C7893q c7893q = this.f10400a;
        if (c7893q == null) {
            l.l("presenter");
            throw null;
        }
        c7893q.f24481g = Integer.valueOf(i);
        AbstractC7892p abstractC7892p = (AbstractC7892p) c7893q.f57683a;
        if (abstractC7892p == null) {
            return;
        }
        abstractC7892p.mo29166O2();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: i1 */
    public void mo29158i1() {
        setResult(10001);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: i2 */
    public void mo29157i2() {
        m35831b0();
        Toast.makeText((Context) this, C3478R.string.BusinessProfile_ProfileCreatedMessage, 0).show();
        setResult(-1, new Intent());
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: i9 */
    public void mo29156i9() {
        g$a g_a = new g$a(this);
        g_a.m3656m(C3478R.string.BusinessProfile_SaveEUWarningTitle);
        g_a.m3664e(C3478R.string.BusinessProfile_SaveEuWarningMessage);
        g_a.m3660i(C3478R.string.StrAgree, new DialogInterface$OnClickListenerC3543k());
        g_a.m3662g(C3478R.string.StrCancel, DialogInterface$OnClickListenerC3544l.f10434a);
        TextView textView = (TextView) g_a.m3652q().findViewById(16908299);
        if (textView != null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: j1 */
    public void mo29155j1() {
        Long l = this.f10414o;
        C20592g c20592g = this.f10401b;
        if (c20592g != null) {
            startActivityForResult(C17422k.m16057r(this, l, 4, c20592g), 2);
        } else {
            l.l("featuresRegistry");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: k8 */
    public boolean mo29154k8(String str) {
        l.e(str, AnalyticsConstants.EMAIL);
        return Patterns.EMAIL_ADDRESS.matcher(str).matches();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: l2 */
    public void mo29153l2(String str) {
        l.e(str, "logo");
        Intent m28220b = C8612s.m28220b(this, Uri.parse(str));
        List<ResolveInfo> queryIntentActivities = getPackageManager().queryIntentActivities(m28220b, 0);
        l.d(queryIntentActivities, "packageManager.queryIntentActivities(intent, 0)");
        if (queryIntentActivities.isEmpty()) {
            m35825ua(str);
            return;
        }
        l.d(m28220b, "intent");
        m28220b.setComponent(new ComponentName(((ResolveInfo) s1.u.i.B(queryIntentActivities)).activityInfo.packageName, ((ResolveInfo) s1.u.i.B(queryIntentActivities)).activityInfo.name));
        startActivityForResult(m28220b, 3);
        overridePendingTransition(0, 0);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: l4 */
    public void mo29152l4(int i) {
        OpenHoursFragment openHoursFragment = this.f10410k;
        if (openHoursFragment == null) {
            l.l("openHoursFragment");
            throw null;
        }
        C7864d c7864d = openHoursFragment.f10379b;
        if (c7864d == null) {
            l.l("openHoursAdapter");
            throw null;
        }
        c7864d.f24437e = i;
        c7864d.f24434b = true;
        c7864d.notifyItemChanged(i);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: m2 */
    public void mo29151m2(int i) {
        OpenHoursFragment openHoursFragment = this.f10410k;
        if (openHoursFragment == null) {
            l.l("openHoursFragment");
            throw null;
        }
        C7864d c7864d = openHoursFragment.f10379b;
        if (c7864d == null) {
            l.l("openHoursAdapter");
            throw null;
        }
        c7864d.f24437e = i;
        c7864d.f24436d = true;
        c7864d.notifyItemChanged(i);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: n7 */
    public void mo29150n7(List<OpenHours> list) {
        l.e(list, "openHours");
        OpenHoursFragment openHoursFragment = this.f10410k;
        if (openHoursFragment == null) {
            l.l("openHoursFragment");
            throw null;
        }
        Objects.requireNonNull(openHoursFragment);
        l.e(list, "openHours");
        C7869g c7869g = openHoursFragment.f10378a;
        if (c7869g == null) {
            l.l("presenter");
            throw null;
        }
        l.e(list, "openHours");
        if (!(!list.isEmpty())) {
            return;
        }
        for (w wVar : s1.u.i.x0(s1.u.i.h1(c7869g.f24443b.mo28920i3()))) {
            int i = wVar.a;
            c7869g.f24443b.mo28926c3(i);
            AbstractC7868f abstractC7868f = (AbstractC7868f) c7869g.f57683a;
            if (abstractC7868f != null) {
                abstractC7868f.mo29204c3(i);
            }
        }
        for (OpenHours openHours : c7869g.f24443b.mo28919j3(list)) {
            AbstractC7868f abstractC7868f2 = (AbstractC7868f) c7869g.f57683a;
            if (abstractC7868f2 != null) {
                abstractC7868f2.mo29211Gq(openHours);
            }
        }
        AbstractC7868f abstractC7868f3 = (AbstractC7868f) c7869g.f57683a;
        if (abstractC7868f3 == null) {
            return;
        }
        abstractC7868f3.mo29205Yy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: n8 */
    public void mo29149n8(int i, boolean z) {
        String string = getString(i);
        l.d(string, "getString(errorMessage)");
        mo29177C9(string, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r9v0, types: [n3.r.a.l, android.content.Context, com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity] */
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        Uri data2;
        AbstractC7892p abstractC7892p;
        h1 h1Var = h1.a;
        CreateBusinessProfileActivity.super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            if (i == 0) {
                if (intent == null || (data = intent.getData()) == null) {
                    return;
                }
                f fVar = this.f10406g;
                if (fVar != null) {
                    s1.a.a.a.v0.f.d.w2(h1Var, fVar, (j0) null, new C7881h(this, data, null), 2, (Object) null);
                } else {
                    l.l("asyncCoroutineContext");
                    throw null;
                }
            } else if (i == 1) {
                if (intent == null || (data2 = intent.getData()) == null) {
                    return;
                }
                f fVar2 = this.f10406g;
                if (fVar2 != null) {
                    s1.a.a.a.v0.f.d.w2(h1Var, fVar2, (j0) null, new C7884i(this, data2, null), 2, (Object) null);
                } else {
                    l.l("asyncCoroutineContext");
                    throw null;
                }
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                String uri = C8612s.m28216f(this).toString();
                l.d(uri, "ImageUtils.getCroppedImageUri(this).toString()");
                m35825ua(uri);
            } else {
                ?? r14 = false;
                Long valueOf = intent != null ? Long.valueOf(intent.getLongExtra("tag_id", 0L)) : null;
                C7893q c7893q = this.f10400a;
                if (c7893q == null) {
                    l.l("presenter");
                    throw null;
                }
                if (valueOf != null) {
                    r14 = valueOf.longValue();
                }
                C8551c mo20024c = c7893q.f24491q.mo20024c(r14 == true ? 1L : 0L);
                if (mo20024c == null || (abstractC7892p = (AbstractC7892p) c7893q.f57683a) == null) {
                    return;
                }
                abstractC7892p.mo29143y1(mo20024c);
            }
        }
    }

    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42940M() > 0) {
            getSupportFragmentManager().m42921c0();
            return;
        }
        C7893q c7893q = this.f10400a;
        if (c7893q == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC7892p abstractC7892p = (AbstractC7892p) c7893q.f57683a;
        if (abstractC7892p == null) {
            return;
        }
        abstractC7892p.mo29160da();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AbstractC7892p abstractC7892p;
        AbstractC7892p abstractC7892p2;
        Company company;
        Address address;
        Long l;
        C8551c mo20024c;
        AbstractC7892p abstractC7892p3;
        Company company2;
        Branding branding;
        List<String> imageUrls;
        Company company3;
        Company company4;
        Branding branding2;
        String backgroundColor;
        AbstractC7892p abstractC7892p4;
        AbstractC7892p abstractC7892p5;
        C17422k.m16064n0(this, false, 1);
        CreateBusinessProfileActivity.super.onCreate(bundle);
        View inflate = LayoutInflater.from(this).inflate(C3478R.layout.business_profile_activity_create_profile, (ViewGroup) null, false);
        int i = C3478R.C3480id.aboutTextView;
        TextView textView = (TextView) inflate.findViewById(i);
        if (textView != null) {
            i = C3478R.C3480id.addMoreInfoLinear;
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(i);
            if (linearLayout != null) {
                i = C3478R.C3480id.addressEditText;
                TextView textView2 = (TextView) inflate.findViewById(i);
                if (textView2 != null) {
                    i = C3478R.C3480id.addressInputLayout;
                    TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(i);
                    if (textInputLayout != null) {
                        i = C3478R.C3480id.backButton;
                        ImageView imageView = (ImageView) inflate.findViewById(i);
                        if (imageView != null) {
                            i = C3478R.C3480id.businessAddressPlaceholder;
                            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
                            if (frameLayout != null) {
                                i = C3478R.C3480id.colorsRecyclerView;
                                RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
                                if (recyclerView != null) {
                                    i = C3478R.C3480id.colorsTextView;
                                    TextView textView3 = (TextView) inflate.findViewById(i);
                                    if (textView3 != null) {
                                        i = C3478R.C3480id.contactPersonTextView;
                                        TextView textView4 = (TextView) inflate.findViewById(i);
                                        if (textView4 != null) {
                                            i = C3478R.C3480id.continueButton;
                                            Button button = (Button) inflate.findViewById(i);
                                            if (button != null) {
                                                i = C3478R.C3480id.deleteAddressButton;
                                                ImageButton imageButton = (ImageButton) inflate.findViewById(i);
                                                if (imageButton != null) {
                                                    i = C3478R.C3480id.descriptionEditText;
                                                    TextInputEditText findViewById = inflate.findViewById(i);
                                                    if (findViewById != null) {
                                                        i = C3478R.C3480id.descriptionInputLayout;
                                                        TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(i);
                                                        if (textInputLayout2 != null) {
                                                            i = C3478R.C3480id.designationEditText;
                                                            TextInputEditText findViewById2 = inflate.findViewById(i);
                                                            if (findViewById2 != null) {
                                                                i = C3478R.C3480id.designationInputLayout;
                                                                TextInputLayout textInputLayout3 = (TextInputLayout) inflate.findViewById(i);
                                                                if (textInputLayout3 != null) {
                                                                    i = C3478R.C3480id.emailEditText;
                                                                    TextInputEditText findViewById3 = inflate.findViewById(i);
                                                                    if (findViewById3 != null) {
                                                                        i = C3478R.C3480id.emailInputLayout;
                                                                        TextInputLayout textInputLayout4 = (TextInputLayout) inflate.findViewById(i);
                                                                        if (textInputLayout4 != null) {
                                                                            i = C3478R.C3480id.facebookEditText;
                                                                            TextInputEditText findViewById4 = inflate.findViewById(i);
                                                                            if (findViewById4 != null) {
                                                                                i = C3478R.C3480id.facebookInputLayout;
                                                                                TextInputLayout textInputLayout5 = (TextInputLayout) inflate.findViewById(i);
                                                                                if (textInputLayout5 != null) {
                                                                                    i = C3478R.C3480id.firstNameEditText;
                                                                                    TextInputEditText findViewById5 = inflate.findViewById(i);
                                                                                    if (findViewById5 != null) {
                                                                                        i = C3478R.C3480id.firstNameInputLayout;
                                                                                        TextInputLayout textInputLayout6 = (TextInputLayout) inflate.findViewById(i);
                                                                                        if (textInputLayout6 != null) {
                                                                                            i = C3478R.C3480id.footnoteTextView;
                                                                                            TextView textView5 = (TextView) inflate.findViewById(i);
                                                                                            if (textView5 != null) {
                                                                                                i = C3478R.C3480id.headerView;
                                                                                                View findViewById6 = inflate.findViewById(i);
                                                                                                if (findViewById6 != null) {
                                                                                                    i = C3478R.C3480id.lastNameEditText;
                                                                                                    TextInputEditText findViewById7 = inflate.findViewById(i);
                                                                                                    if (findViewById7 != null) {
                                                                                                        i = C3478R.C3480id.lastNameInputLayout;
                                                                                                        TextInputLayout textInputLayout7 = (TextInputLayout) inflate.findViewById(i);
                                                                                                        if (textInputLayout7 != null) {
                                                                                                            i = C3478R.C3480id.logoButton;
                                                                                                            Button button2 = (Button) inflate.findViewById(i);
                                                                                                            if (button2 != null) {
                                                                                                                i = C3478R.C3480id.logoCardView;
                                                                                                                FrameLayout frameLayout2 = (FrameLayout) inflate.findViewById(i);
                                                                                                                if (frameLayout2 != null) {
                                                                                                                    i = C3478R.C3480id.logoImageView;
                                                                                                                    ImageView imageView2 = (ImageView) inflate.findViewById(i);
                                                                                                                    if (imageView2 != null) {
                                                                                                                        i = C3478R.C3480id.mapCardView;
                                                                                                                        CardView cardView = (CardView) inflate.findViewById(i);
                                                                                                                        if (cardView != null) {
                                                                                                                            i = C3478R.C3480id.mapViewMarker;
                                                                                                                            ImageView imageView3 = (ImageView) inflate.findViewById(i);
                                                                                                                            if (imageView3 != null) {
                                                                                                                                i = C3478R.C3480id.moreInfoButton;
                                                                                                                                Button button3 = (Button) inflate.findViewById(i);
                                                                                                                                if (button3 != null) {
                                                                                                                                    i = C3478R.C3480id.nameEditText;
                                                                                                                                    TextInputEditText findViewById8 = inflate.findViewById(i);
                                                                                                                                    if (findViewById8 != null) {
                                                                                                                                        i = C3478R.C3480id.nameInputLayout;
                                                                                                                                        TextInputLayout textInputLayout8 = (TextInputLayout) inflate.findViewById(i);
                                                                                                                                        if (textInputLayout8 != null) {
                                                                                                                                            i = C3478R.C3480id.phoneNumberEditText;
                                                                                                                                            TextInputEditText findViewById9 = inflate.findViewById(i);
                                                                                                                                            if (findViewById9 != null) {
                                                                                                                                                i = C3478R.C3480id.phoneNumberInputLayout;
                                                                                                                                                TextInputLayout textInputLayout9 = (TextInputLayout) inflate.findViewById(i);
                                                                                                                                                if (textInputLayout9 != null) {
                                                                                                                                                    i = C3478R.C3480id.picturesRecyclerView;
                                                                                                                                                    RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(i);
                                                                                                                                                    if (recyclerView2 != null) {
                                                                                                                                                        i = C3478R.C3480id.picturesTextView;
                                                                                                                                                        TextView textView6 = (TextView) inflate.findViewById(i);
                                                                                                                                                        if (textView6 != null) {
                                                                                                                                                            i = C3478R.C3480id.sizeEditText;
                                                                                                                                                            TextView textView7 = (TextView) inflate.findViewById(i);
                                                                                                                                                            if (textView7 != null) {
                                                                                                                                                                i = C3478R.C3480id.sizeInputLayout;
                                                                                                                                                                TextInputLayout textInputLayout10 = (TextInputLayout) inflate.findViewById(i);
                                                                                                                                                                if (textInputLayout10 != null) {
                                                                                                                                                                    i = C3478R.C3480id.sizeSpinner;
                                                                                                                                                                    Spinner spinner = (Spinner) inflate.findViewById(i);
                                                                                                                                                                    if (spinner != null) {
                                                                                                                                                                        i = C3478R.C3480id.tagTextView;
                                                                                                                                                                        TagView tagView = (TagView) inflate.findViewById(i);
                                                                                                                                                                        if (tagView != null) {
                                                                                                                                                                            i = C3478R.C3480id.tagsEditText;
                                                                                                                                                                            TextView textView8 = (TextView) inflate.findViewById(i);
                                                                                                                                                                            if (textView8 != null) {
                                                                                                                                                                                i = C3478R.C3480id.tagsInputLayout;
                                                                                                                                                                                TextInputLayout textInputLayout11 = (TextInputLayout) inflate.findViewById(i);
                                                                                                                                                                                if (textInputLayout11 != null) {
                                                                                                                                                                                    i = C3478R.C3480id.toolbar;
                                                                                                                                                                                    Toolbar toolbar = (Toolbar) inflate.findViewById(i);
                                                                                                                                                                                    if (toolbar != null) {
                                                                                                                                                                                        i = C3478R.C3480id.twitterEditText;
                                                                                                                                                                                        TextInputEditText findViewById10 = inflate.findViewById(i);
                                                                                                                                                                                        if (findViewById10 != null) {
                                                                                                                                                                                            i = C3478R.C3480id.twitterInputLayout;
                                                                                                                                                                                            TextInputLayout textInputLayout12 = (TextInputLayout) inflate.findViewById(i);
                                                                                                                                                                                            if (textInputLayout12 != null) {
                                                                                                                                                                                                i = C3478R.C3480id.websiteEditText;
                                                                                                                                                                                                TextInputEditText findViewById11 = inflate.findViewById(i);
                                                                                                                                                                                                if (findViewById11 != null) {
                                                                                                                                                                                                    i = C3478R.C3480id.websiteInputLayout;
                                                                                                                                                                                                    TextInputLayout textInputLayout13 = (TextInputLayout) inflate.findViewById(i);
                                                                                                                                                                                                    if (textInputLayout13 != null) {
                                                                                                                                                                                                        C8106v c8106v = new C8106v((FrameLayout) inflate, textView, linearLayout, textView2, textInputLayout, imageView, frameLayout, recyclerView, textView3, textView4, button, imageButton, findViewById, textInputLayout2, findViewById2, textInputLayout3, findViewById3, textInputLayout4, findViewById4, textInputLayout5, findViewById5, textInputLayout6, textView5, findViewById6, findViewById7, textInputLayout7, button2, frameLayout2, imageView2, cardView, imageView3, button3, findViewById8, textInputLayout8, findViewById9, textInputLayout9, recyclerView2, textView6, textView7, textInputLayout10, spinner, tagView, textView8, textInputLayout11, toolbar, findViewById10, textInputLayout12, findViewById11, textInputLayout13);
                                                                                                                                                                                                        l.d(c8106v, "BusinessProfileActivityC…ayoutInflater.from(this))");
                                                                                                                                                                                                        this.f10416q = c8106v;
                                                                                                                                                                                                        setContentView(c8106v.f25119a);
                                                                                                                                                                                                        C7905c c7905c = (C7905c) C18334g0.m15217m(this);
                                                                                                                                                                                                        AbstractC8027h abstractC8027h = (AbstractC8027h) c7905c.f24519p.get();
                                                                                                                                                                                                        AbstractC8018a abstractC8018a = (AbstractC8018a) c7905c.f24522s.get();
                                                                                                                                                                                                        AbstractC7877d abstractC7877d = (AbstractC7877d) c7905c.f24524u.get();
                                                                                                                                                                                                        AbstractC8426f mo12525V = c7905c.f24504a.mo12525V();
                                                                                                                                                                                                        Objects.requireNonNull(mo12525V, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        f mo12378g = c7905c.f24504a.mo12378g();
                                                                                                                                                                                                        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        C20592g mo12343i5 = c7905c.f24504a.mo12343i5();
                                                                                                                                                                                                        Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        AbstractC14537p mo12619O = c7905c.f24507d.mo12619O();
                                                                                                                                                                                                        Objects.requireNonNull(mo12619O, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        AbstractC12589h mo12614O5 = c7905c.f24508e.mo12614O5();
                                                                                                                                                                                                        Objects.requireNonNull(mo12614O5, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        AbstractC19223c0 mo12349i = c7905c.f24509f.mo12349i();
                                                                                                                                                                                                        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        this.f10400a = new C7893q(abstractC8027h, abstractC8018a, abstractC7877d, mo12525V, mo12378g, mo12343i5, mo12619O, mo12614O5, new C8523b(mo12349i));
                                                                                                                                                                                                        C20592g mo12343i52 = c7905c.f24504a.mo12343i5();
                                                                                                                                                                                                        Objects.requireNonNull(mo12343i52, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        this.f10401b = mo12343i52;
                                                                                                                                                                                                        AbstractC8541a mo12420d = c7905c.f24504a.mo12420d();
                                                                                                                                                                                                        Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        this.f10402c = mo12420d;
                                                                                                                                                                                                        AbstractC8438a mo12484Y = c7905c.f24504a.mo12484Y();
                                                                                                                                                                                                        Objects.requireNonNull(mo12484Y, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        this.f10403d = mo12484Y;
                                                                                                                                                                                                        AbstractC8432l mo11657L = c7905c.f24504a.mo11657L();
                                                                                                                                                                                                        Objects.requireNonNull(mo11657L, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        this.f10404e = mo11657L;
                                                                                                                                                                                                        AbstractC19462a mo12776C4 = c7905c.f24505b.mo12776C4();
                                                                                                                                                                                                        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        this.f10405f = mo12776C4;
                                                                                                                                                                                                        f mo12606P = c7905c.f24504a.mo12606P();
                                                                                                                                                                                                        Objects.requireNonNull(mo12606P, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        this.f10406g = mo12606P;
                                                                                                                                                                                                        f mo12378g2 = c7905c.f24504a.mo12378g();
                                                                                                                                                                                                        Objects.requireNonNull(mo12378g2, "Cannot return null from a non-@Nullable component method");
                                                                                                                                                                                                        this.f10407h = mo12378g2;
                                                                                                                                                                                                        AbstractC8541a abstractC8541a = this.f10402c;
                                                                                                                                                                                                        if (abstractC8541a == null) {
                                                                                                                                                                                                            l.l("coreSettings");
                                                                                                                                                                                                            throw null;
                                                                                                                                                                                                        }
                                                                                                                                                                                                        boolean z = abstractC8541a.getBoolean("profileBusiness", false);
                                                                                                                                                                                                        C20592g c20592g = this.f10401b;
                                                                                                                                                                                                        if (c20592g == null) {
                                                                                                                                                                                                            l.l("featuresRegistry");
                                                                                                                                                                                                            throw null;
                                                                                                                                                                                                        } else if (!c20592g.m10945w().isEnabled() && !z) {
                                                                                                                                                                                                            finish();
                                                                                                                                                                                                            return;
                                                                                                                                                                                                        } else {
                                                                                                                                                                                                            if (getIntent().getBooleanExtra("arg_from_wizard", false)) {
                                                                                                                                                                                                                AbstractC19462a abstractC19462a = this.f10405f;
                                                                                                                                                                                                                if (abstractC19462a == null) {
                                                                                                                                                                                                                    l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                                                                                                                                                                                                                    throw null;
                                                                                                                                                                                                                }
                                                                                                                                                                                                                HashMap hashMap = new HashMap();
                                                                                                                                                                                                                hashMap.put("Action", "BusinessProfile");
                                                                                                                                                                                                                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("WizardAction", null, hashMap, null);
                                                                                                                                                                                                                l.d(c19505a, "AnalyticsEvent.Builder(W…                 .build()");
                                                                                                                                                                                                                abstractC19462a.mo13271e(c19505a);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            l.e(this, AnalyticsConstants.CONTEXT);
                                                                                                                                                                                                            C26702l m1431n = C26702l.m1431n(this);
                                                                                                                                                                                                            l.d(m1431n, "WorkManager.getInstance(context)");
                                                                                                                                                                                                            C21782c.m9083c(m1431n, "AvailableTagsDownloadWorkAction", this, null, null, 12);
                                                                                                                                                                                                            C7893q c7893q = this.f10400a;
                                                                                                                                                                                                            if (c7893q == null) {
                                                                                                                                                                                                                l.l("presenter");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c7893q.f57683a = this;
                                                                                                                                                                                                            C8106v c8106v2 = this.f10416q;
                                                                                                                                                                                                            if (c8106v2 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v2.f25138t.setOnClickListener(new e1(0, this));
                                                                                                                                                                                                            C8106v c8106v3 = this.f10416q;
                                                                                                                                                                                                            if (c8106v3 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v3.f25137s.setOnClickListener(new e1(1, this));
                                                                                                                                                                                                            this.f10408i = new C7870a(this);
                                                                                                                                                                                                            C8106v c8106v4 = this.f10416q;
                                                                                                                                                                                                            if (c8106v4 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v4.f25125g.setHasFixedSize(true);
                                                                                                                                                                                                            C8106v c8106v5 = this.f10416q;
                                                                                                                                                                                                            if (c8106v5 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            RecyclerView recyclerView3 = c8106v5.f25125g;
                                                                                                                                                                                                            l.d(recyclerView3, "binding.colorsRecyclerView");
                                                                                                                                                                                                            C7870a c7870a = this.f10408i;
                                                                                                                                                                                                            if (c7870a == null) {
                                                                                                                                                                                                                l.l("colorsAdapter");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            recyclerView3.setAdapter(c7870a);
                                                                                                                                                                                                            this.f10412m = "#F2F5F7";
                                                                                                                                                                                                            C8106v c8106v6 = this.f10416q;
                                                                                                                                                                                                            if (c8106v6 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v6.f25122d.setOnTouchListener(new View$OnTouchListenerC7887k(this));
                                                                                                                                                                                                            C8106v c8106v7 = this.f10416q;
                                                                                                                                                                                                            if (c8106v7 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v7.f25141w.setOnClickListener(new View$OnClickListenerC7888l(this));
                                                                                                                                                                                                            this.f10409j = new C7874c(this);
                                                                                                                                                                                                            C8106v c8106v8 = this.f10416q;
                                                                                                                                                                                                            if (c8106v8 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v8.f25111A.setHasFixedSize(true);
                                                                                                                                                                                                            C8106v c8106v9 = this.f10416q;
                                                                                                                                                                                                            if (c8106v9 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            RecyclerView recyclerView4 = c8106v9.f25111A;
                                                                                                                                                                                                            l.d(recyclerView4, "binding.picturesRecyclerView");
                                                                                                                                                                                                            C7874c c7874c = this.f10409j;
                                                                                                                                                                                                            if (c7874c == null) {
                                                                                                                                                                                                                l.l("picturesAdapter");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            recyclerView4.setAdapter(c7874c);
                                                                                                                                                                                                            C7874c c7874c2 = this.f10409j;
                                                                                                                                                                                                            if (c7874c2 == null) {
                                                                                                                                                                                                                l.l("picturesAdapter");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c7874c2.f24450a.add("");
                                                                                                                                                                                                            c7874c2.f24450a.add("");
                                                                                                                                                                                                            c7874c2.f24450a.add("");
                                                                                                                                                                                                            c7874c2.notifyDataSetChanged();
                                                                                                                                                                                                            C8106v c8106v10 = this.f10416q;
                                                                                                                                                                                                            if (c8106v10 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v10.f25115E.setOnTouchListener(new View$OnTouchListenerC7891o(this));
                                                                                                                                                                                                            C8106v c8106v11 = this.f10416q;
                                                                                                                                                                                                            if (c8106v11 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            Spinner spinner2 = c8106v11.f25113C;
                                                                                                                                                                                                            l.d(spinner2, "binding.sizeSpinner");
                                                                                                                                                                                                            spinner2.setAdapter((SpinnerAdapter) new C7879f(this, 17367049));
                                                                                                                                                                                                            C8106v c8106v12 = this.f10416q;
                                                                                                                                                                                                            if (c8106v12 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            Spinner spinner3 = c8106v12.f25113C;
                                                                                                                                                                                                            l.d(spinner3, "binding.sizeSpinner");
                                                                                                                                                                                                            spinner3.setOnItemSelectedListener(new C7889m(this));
                                                                                                                                                                                                            OpenHoursFragment m42943J = getSupportFragmentManager().m42943J(C3478R.C3480id.openHoursFragment);
                                                                                                                                                                                                            Objects.requireNonNull(m42943J, "null cannot be cast to non-null type com.truecaller.bizmon.ui.openHours.OpenHoursFragment");
                                                                                                                                                                                                            this.f10410k = m42943J;
                                                                                                                                                                                                            C8106v c8106v13 = this.f10416q;
                                                                                                                                                                                                            if (c8106v13 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            TextInputEditText textInputEditText = c8106v13.f25144z;
                                                                                                                                                                                                            AbstractC8541a abstractC8541a2 = this.f10402c;
                                                                                                                                                                                                            if (abstractC8541a2 == null) {
                                                                                                                                                                                                                l.l("coreSettings");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            String string = abstractC8541a2.getString("profileNationalNumber");
                                                                                                                                                                                                            AbstractC8438a abstractC8438a = this.f10403d;
                                                                                                                                                                                                            if (abstractC8438a == null) {
                                                                                                                                                                                                                l.l("accountSettings");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            textInputEditText.setText(C8605o.m28239a(C19231g0.m13810G(string, abstractC8438a.getString("profileNumber"))));
                                                                                                                                                                                                            C8106v c8106v14 = this.f10416q;
                                                                                                                                                                                                            if (c8106v14 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v14.f25142x.setOnClickListener(new View$OnClickListenerC7886j(c8106v14, this));
                                                                                                                                                                                                            C8106v c8106v15 = this.f10416q;
                                                                                                                                                                                                            if (c8106v15 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            TextView textView9 = c8106v15.f25122d;
                                                                                                                                                                                                            int i2 = C3478R.attr.theme_textColorSecondary;
                                                                                                                                                                                                            C8605o.m28231i(textView9, i2);
                                                                                                                                                                                                            C8605o.m28231i(c8106v15.f25120b, i2);
                                                                                                                                                                                                            C8605o.m28231i(c8106v15.f25126h, i2);
                                                                                                                                                                                                            C8605o.m28231i(c8106v15.f25142x, C3478R.attr.theme_accentColor);
                                                                                                                                                                                                            m35824va("#F2F5F7");
                                                                                                                                                                                                            C8106v c8106v16 = this.f10416q;
                                                                                                                                                                                                            if (c8106v16 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v16.f25127i.setOnClickListener(new View$OnClickListenerC7890n(c8106v16, this));
                                                                                                                                                                                                            C7893q c7893q2 = this.f10400a;
                                                                                                                                                                                                            if (c7893q2 == null) {
                                                                                                                                                                                                                l.l("presenter");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            boolean booleanExtra = getIntent().getBooleanExtra("arg_editing", false);
                                                                                                                                                                                                            boolean booleanExtra2 = getIntent().getBooleanExtra("arg_from_wizard", false);
                                                                                                                                                                                                            boolean booleanExtra3 = getIntent().getBooleanExtra("arg_migrating", false);
                                                                                                                                                                                                            c7893q2.f24480f = booleanExtra;
                                                                                                                                                                                                            if (booleanExtra || booleanExtra3) {
                                                                                                                                                                                                                Profile mo28946f = c7893q2.f24485k.mo28946f();
                                                                                                                                                                                                                List<OpenHours> list = s1.u.s.a;
                                                                                                                                                                                                                AbstractC7892p abstractC7892p6 = (AbstractC7892p) c7893q2.f57683a;
                                                                                                                                                                                                                if (abstractC7892p6 != null) {
                                                                                                                                                                                                                    abstractC7892p6.mo29176D9(mo28946f);
                                                                                                                                                                                                                }
                                                                                                                                                                                                                BusinessData businessData = mo28946f.getBusinessData();
                                                                                                                                                                                                                String avatarUrl = businessData != null ? businessData.getAvatarUrl() : null;
                                                                                                                                                                                                                if (!(avatarUrl == null || avatarUrl.length() == 0) && (abstractC7892p5 = (AbstractC7892p) c7893q2.f57683a) != null) {
                                                                                                                                                                                                                    abstractC7892p5.mo29167M9(avatarUrl);
                                                                                                                                                                                                                }
                                                                                                                                                                                                                BusinessData businessData2 = mo28946f.getBusinessData();
                                                                                                                                                                                                                if (businessData2 != null && (company4 = businessData2.getCompany()) != null && (branding2 = company4.getBranding()) != null && (backgroundColor = branding2.getBackgroundColor()) != null && (abstractC7892p4 = (AbstractC7892p) c7893q2.f57683a) != null) {
                                                                                                                                                                                                                    abstractC7892p4.mo29164Z3(backgroundColor);
                                                                                                                                                                                                                }
                                                                                                                                                                                                                AbstractC7892p abstractC7892p7 = (AbstractC7892p) c7893q2.f57683a;
                                                                                                                                                                                                                if (abstractC7892p7 != null) {
                                                                                                                                                                                                                    BusinessData businessData3 = mo28946f.getBusinessData();
                                                                                                                                                                                                                    List<OpenHours> openHours = (businessData3 == null || (company3 = businessData3.getCompany()) == null) ? null : company3.getOpenHours();
                                                                                                                                                                                                                    if (openHours == null) {
                                                                                                                                                                                                                        openHours = list;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    abstractC7892p7.mo29150n7(openHours);
                                                                                                                                                                                                                }
                                                                                                                                                                                                                BusinessData businessData4 = mo28946f.getBusinessData();
                                                                                                                                                                                                                if (businessData4 != null && (company2 = businessData4.getCompany()) != null && (branding = company2.getBranding()) != null && (imageUrls = branding.getImageUrls()) != null) {
                                                                                                                                                                                                                    int i3 = 0;
                                                                                                                                                                                                                    for (Object obj : imageUrls) {
                                                                                                                                                                                                                        if (i3 < 0) {
                                                                                                                                                                                                                            s1.u.i.N0();
                                                                                                                                                                                                                            throw null;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        String str = (String) obj;
                                                                                                                                                                                                                        AbstractC7892p abstractC7892p8 = (AbstractC7892p) c7893q2.f57683a;
                                                                                                                                                                                                                        if (abstractC7892p8 != null) {
                                                                                                                                                                                                                            abstractC7892p8.mo29147s4(i3, str);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        i3++;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                                BusinessData businessData5 = mo28946f.getBusinessData();
                                                                                                                                                                                                                List<OpenHours> list2 = list;
                                                                                                                                                                                                                if (businessData5 != null) {
                                                                                                                                                                                                                    List<Long> tags = businessData5.getTags();
                                                                                                                                                                                                                    list2 = list;
                                                                                                                                                                                                                    if (tags != null) {
                                                                                                                                                                                                                        list2 = tags;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                                if ((!list2.isEmpty()) && (l = (Long) s1.u.i.D(list2)) != null && (mo20024c = c7893q2.f24491q.mo20024c(l.longValue())) != null && (abstractC7892p3 = (AbstractC7892p) c7893q2.f57683a) != null) {
                                                                                                                                                                                                                    abstractC7892p3.mo29143y1(mo20024c);
                                                                                                                                                                                                                }
                                                                                                                                                                                                                BusinessData businessData6 = mo28946f.getBusinessData();
                                                                                                                                                                                                                if (businessData6 != null && (company = businessData6.getCompany()) != null && (address = company.getAddress()) != null) {
                                                                                                                                                                                                                    String street = address.getStreet();
                                                                                                                                                                                                                    if (street == null) {
                                                                                                                                                                                                                        street = "";
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    String zipCode = address.getZipCode();
                                                                                                                                                                                                                    String city = address.getCity();
                                                                                                                                                                                                                    if (city == null) {
                                                                                                                                                                                                                        city = "";
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    String country = address.getCountry();
                                                                                                                                                                                                                    if (country == null) {
                                                                                                                                                                                                                        country = "";
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    c7893q2.m29141Jj(new BusinessAddressInput(street, zipCode, city, country, address.getLatitude(), address.getLongitude()));
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c7893q2.f24484j = booleanExtra3 ? 1 : booleanExtra2 ? 0 : 2;
                                                                                                                                                                                                            if (!c7893q2.f24488n.mo28594d() && (abstractC7892p2 = (AbstractC7892p) c7893q2.f57683a) != null) {
                                                                                                                                                                                                                abstractC7892p2.mo29162a2();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if (c7893q2.f24484j == 2) {
                                                                                                                                                                                                                C20592g c20592g2 = c7893q2.f24490p;
                                                                                                                                                                                                                if (c20592g2.f57927g0.m10941a(c20592g2, C20592g.f57695p6[56]).isEnabled() && (abstractC7892p = (AbstractC7892p) c7893q2.f57683a) != null) {
                                                                                                                                                                                                                    abstractC7892p.mo29173H3();
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            C8106v c8106v17 = this.f10416q;
                                                                                                                                                                                                            if (c8106v17 == null) {
                                                                                                                                                                                                                l.l("binding");
                                                                                                                                                                                                                throw null;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            c8106v17.f25123e.setOnClickListener(new View$OnClickListenerC3533c());
                                                                                                                                                                                                            this.f10415p = new ProgressDialog(this);
                                                                                                                                                                                                            return;
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroy() {
        C7893q c7893q = this.f10400a;
        if (c7893q == null) {
            l.l("presenter");
            throw null;
        }
        c7893q.mo9806c();
        CreateBusinessProfileActivity.super.onDestroy();
    }

    /* renamed from: qa */
    public final C7893q m35829qa() {
        C7893q c7893q = this.f10400a;
        if (c7893q != null) {
            return c7893q;
        }
        l.l("presenter");
        throw null;
    }

    /* renamed from: ra */
    public final f m35828ra() {
        f fVar = this.f10407h;
        if (fVar != null) {
            return fVar;
        }
        l.l("uiCoroutineContext");
        throw null;
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: s3 */
    public void mo29148s3(String str) {
        l.e(str, "picture");
        this.f10413n.remove(str);
        C7874c c7874c = this.f10409j;
        if (c7874c == null) {
            l.l("picturesAdapter");
            throw null;
        }
        l.e(str, "picture");
        int indexOf = c7874c.f24450a.indexOf(str);
        c7874c.f24450a.set(indexOf, "");
        c7874c.notifyItemChanged(indexOf);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: s4 */
    public void mo29147s4(int i, String str) {
        l.e(str, "picture");
        this.f10413n.add(str);
        C7874c c7874c = this.f10409j;
        if (c7874c == null) {
            l.l("picturesAdapter");
            throw null;
        }
        Objects.requireNonNull(c7874c);
        l.e(str, "picture");
        c7874c.f24450a.set(i, str);
        c7874c.notifyItemChanged(i);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: t5 */
    public void mo29146t5(double d, double d2) {
        SupportMapFragment m42943J = getSupportFragmentManager().m42943J(C3478R.C3480id.mapView);
        Objects.requireNonNull(m42943J, "null cannot be cast to non-null type com.google.android.gms.maps.SupportMapFragment");
        m42943J.OA(new C3547o(d, d2));
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: t8 */
    public void mo29145t8(String str, String str2, String str3, String str4) {
        C22128a.m8703I0(str, "street", str3, "city", str4, "countryName");
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        TextView textView = c8106v.f25122d;
        l.d(textView, "binding.addressEditText");
        textView.setText(C19231g0.m13813D(", ", str, str2, str3, str4));
        C8106v c8106v2 = this.f10416q;
        if (c8106v2 == null) {
            l.l("binding");
            throw null;
        }
        TextView textView2 = c8106v2.f25122d;
        l.d(textView2, "binding.addressEditText");
        textView2.setError(null);
    }

    /* renamed from: ta */
    public final void m35826ta(View view, int i, int i2) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new C3534d(view));
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.start();
    }

    /* renamed from: ua */
    public final void m35825ua(String str) {
        h1 h1Var = h1.a;
        f fVar = this.f10406g;
        if (fVar != null) {
            s1.a.a.a.v0.f.d.w2(h1Var, fVar, (j0) null, new C3535e(str, null), 2, (Object) null);
        } else {
            l.l("asyncCoroutineContext");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: va */
    public final void m35824va(String str) {
        int parseColor = Color.parseColor(str);
        int i = (C12864a2.m22534x(parseColor) > 85.0d ? 1 : (C12864a2.m22534x(parseColor) == 85.0d ? 0 : -1)) > 0 ? C3478R.color.business_profile_black : C3478R.color.business_profile_white;
        Object obj = C26467a.f74235a;
        int m1787a = C26467a.C26471d.m1787a(this, i);
        C8106v c8106v = this.f10416q;
        Drawable drawable = null;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        c8106v.f25135q.setBackgroundColor(parseColor);
        c8106v.f25137s.setTextColor(m1787a);
        c8106v.f25123e.setImageTintList(ColorStateList.valueOf(m1787a));
        Toolbar toolbar = c8106v.f25116J;
        l.d(toolbar, "toolbar");
        Toolbar toolbar2 = c8106v.f25116J;
        l.d(toolbar2, "toolbar");
        Drawable overflowIcon = toolbar2.getOverflowIcon();
        if (overflowIcon != null) {
            overflowIcon.setTint(m1787a);
            overflowIcon.setTintMode(PorterDuff.Mode.SRC_IN);
            drawable = overflowIcon;
        }
        toolbar.setOverflowIcon(drawable);
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: w1 */
    public void mo29144w1() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42940M() > 0) {
            FragmentManager supportFragmentManager2 = getSupportFragmentManager();
            supportFragmentManager2.m42951B(new FragmentManager.C0177n(C7844b.class.getName(), -1, 1), false);
        }
    }

    @Override // p193e.p194a.p294b.p331b.p332a.AbstractC7851d
    /* renamed from: x1 */
    public void mo29249x1() {
        C7893q c7893q = this.f10400a;
        if (c7893q == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC7892p abstractC7892p = (AbstractC7892p) c7893q.f57683a;
        if (abstractC7892p == null) {
            return;
        }
        abstractC7892p.mo29144w1();
    }

    @Override // p193e.p194a.p294b.p331b.p334c.AbstractC7892p
    /* renamed from: y1 */
    public void mo29143y1(C8551c c8551c) {
        l.e(c8551c, RemoteMessageConst.Notification.TAG);
        this.f10414o = Long.valueOf(c8551c.f26350a);
        C8106v c8106v = this.f10416q;
        if (c8106v == null) {
            l.l("binding");
            throw null;
        }
        TagView tagView = c8106v.f25114D;
        tagView.setTag(c8551c);
        l.d(tagView, "this");
        C19286f.m13684T(tagView);
        TextView textView = c8106v.f25115E;
        textView.setText(c8551c.f26351b);
        textView.setError(null);
    }
}

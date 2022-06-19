package com.truecaller.flashsdk.p166ui.send;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.tasks.OnCompleteListener;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.core.FlashMediaService;
import com.truecaller.flashsdk.models.ImageFlash;
import com.truecaller.flashsdk.p166ui.base.BaseFlashActivity;
import com.truecaller.flashsdk.p166ui.customviews.FlashAddBackgroundButton;
import com.truecaller.flashsdk.p166ui.customviews.FlashContactHeaderView;
import com.truecaller.flashsdk.p166ui.customviews.FlashSendFooterView;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o;
import p193e.p194a.p1365y.p1366a.p1377j.AbstractC21571t;
import p193e.p194a.p1365y.p1366a.p1377j.C21552a;
import p193e.p194a.p1365y.p1366a.p1377j.C21553b;
import p193e.p194a.p1365y.p1366a.p1377j.C21554c;
import p193e.p194a.p1365y.p1366a.p1377j.C21555d;
import p193e.p194a.p1365y.p1366a.p1377j.C21556e;
import p193e.p194a.p1365y.p1366a.p1377j.C21557f;
import p193e.p194a.p1365y.p1366a.p1377j.C21558g;
import p193e.p194a.p1365y.p1366a.p1377j.C21559h;
import p193e.p194a.p1365y.p1366a.p1377j.C21560i;
import p193e.p194a.p1365y.p1366a.p1377j.C21561j;
import p193e.p194a.p1365y.p1366a.p1377j.C21562k;
import p193e.p194a.p1365y.p1366a.p1377j.C21563l;
import p193e.p194a.p1365y.p1366a.p1377j.C21564m;
import p193e.p194a.p1365y.p1366a.p1377j.C21565n;
import p193e.p194a.p1365y.p1366a.p1377j.C21567p;
import p193e.p194a.p1365y.p1366a.p1377j.C21568q;
import p193e.p194a.p1365y.p1366a.p1377j.C21569r;
import p193e.p194a.p1365y.p1366a.p1377j.C21570s;
import p193e.p194a.p1365y.p1366a.p1378k.View$OnClickListenerC21577e;
import p193e.p194a.p1365y.p1366a.p1379l.C21584c;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import p193e.p194a.p1365y.p1387e.AbstractC21728g;
import p193e.p194a.p1365y.p1387e.C21733i;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.s;
import s1.z.c.b;
import s1.z.c.f;
import s1.z.c.j;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0012*\u0004¨\u0001¬\u0001\u0018�� º\u00012\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u00020\u00022\u00020\u00052\b\u0012\u0004\u0012\u00020\u00070\u00062\u00020\b2\u00020\t2\u00020\n:\u0004»\u0001¼\u0001B\b¢\u0006\u0005\b¹\u0001\u0010\u0011J\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001b\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\rH\u0014¢\u0006\u0004\b\u001c\u0010\u0011J\u000f\u0010\u001d\u001a\u00020\rH\u0014¢\u0006\u0004\b\u001d\u0010\u0011J\u000f\u0010\u001e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001e\u0010\u0011J#\u0010$\u001a\u00020#2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b$\u0010%J#\u0010(\u001a\u00020#2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010'\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b(\u0010)J#\u0010*\u001a\u00020#2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010'\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b*\u0010)J\u0019\u0010+\u001a\u00020\r2\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b+\u0010,J/\u00102\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u00152\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020.H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\rH\u0016¢\u0006\u0004\b4\u0010\u0011J\u0017\u00106\u001a\u00020\r2\u0006\u00105\u001a\u00020#H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\rH\u0016¢\u0006\u0004\b8\u0010\u0011J\u000f\u00109\u001a\u00020\rH\u0016¢\u0006\u0004\b9\u0010\u0011J\u000f\u0010:\u001a\u00020\rH\u0016¢\u0006\u0004\b:\u0010\u0011J\u000f\u0010;\u001a\u00020\rH\u0016¢\u0006\u0004\b;\u0010\u0011J\u000f\u0010<\u001a\u00020\rH\u0016¢\u0006\u0004\b<\u0010\u0011J\u000f\u0010=\u001a\u00020\rH\u0016¢\u0006\u0004\b=\u0010\u0011J\u000f\u0010>\u001a\u00020\rH\u0016¢\u0006\u0004\b>\u0010\u0011J\u0017\u0010@\u001a\u00020\r2\u0006\u0010?\u001a\u00020.H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\rH\u0016¢\u0006\u0004\bB\u0010\u0011J\u0017\u0010E\u001a\u00020\r2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u0017\u0010H\u001a\u00020\r2\u0006\u0010G\u001a\u00020#H\u0016¢\u0006\u0004\bH\u00107J\u0017\u0010K\u001a\u00020\r2\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bK\u0010LJ\u001f\u0010O\u001a\u00020\r2\u0006\u0010M\u001a\u00020\u00152\u0006\u0010N\u001a\u00020\u0015H\u0016¢\u0006\u0004\bO\u0010\u0019J'\u0010S\u001a\u00020\r2\u0006\u0010P\u001a\u00020\u00152\u0006\u0010Q\u001a\u00020\u00152\u0006\u0010R\u001a\u00020\u0015H\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\rH\u0016¢\u0006\u0004\bU\u0010\u0011J\u0019\u0010X\u001a\u00020\r2\b\u0010W\u001a\u0004\u0018\u00010VH\u0016¢\u0006\u0004\bX\u0010YJ\u000f\u0010Z\u001a\u00020\rH\u0016¢\u0006\u0004\bZ\u0010\u0011J\u000f\u0010[\u001a\u00020\rH\u0016¢\u0006\u0004\b[\u0010\u0011J7\u0010b\u001a\u00020\r2\u0006\u0010\\\u001a\u00020\u00152\u0006\u0010]\u001a\u00020\u00152\u0006\u0010^\u001a\u00020#2\u0006\u0010`\u001a\u00020_2\u0006\u0010a\u001a\u00020_H\u0016¢\u0006\u0004\bb\u0010cJ\u000f\u0010d\u001a\u00020\rH\u0016¢\u0006\u0004\bd\u0010\u0011J\u0017\u0010f\u001a\u00020\r2\u0006\u0010e\u001a\u00020.H\u0016¢\u0006\u0004\bf\u0010AJ\u0017\u0010g\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0015H\u0016¢\u0006\u0004\bg\u0010hJ\u000f\u0010i\u001a\u00020\rH\u0016¢\u0006\u0004\bi\u0010\u0011J\u000f\u0010j\u001a\u00020\rH\u0016¢\u0006\u0004\bj\u0010\u0011J\u000f\u0010k\u001a\u00020\rH\u0016¢\u0006\u0004\bk\u0010\u0011J\u0017\u0010m\u001a\u00020\r2\u0006\u0010l\u001a\u00020.H\u0016¢\u0006\u0004\bm\u0010AJ\u0017\u0010p\u001a\u00020\r2\u0006\u0010o\u001a\u00020nH\u0016¢\u0006\u0004\bp\u0010qJ\u000f\u0010r\u001a\u00020\rH\u0016¢\u0006\u0004\br\u0010\u0011J\u000f\u0010s\u001a\u00020\rH\u0016¢\u0006\u0004\bs\u0010\u0011J!\u0010v\u001a\u00020\r2\u0006\u0010t\u001a\u00020.2\b\b\u0001\u0010u\u001a\u00020.H\u0016¢\u0006\u0004\bv\u0010wJ\u0017\u0010z\u001a\u00020\r2\u0006\u0010y\u001a\u00020xH\u0016¢\u0006\u0004\bz\u0010{J\u000f\u0010|\u001a\u00020\rH\u0016¢\u0006\u0004\b|\u0010\u0011J\u000f\u0010}\u001a\u00020\rH\u0016¢\u0006\u0004\b}\u0010\u0011J\u000f\u0010~\u001a\u00020\rH\u0016¢\u0006\u0004\b~\u0010\u0011J\u000f\u0010\u007f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u007f\u0010\u0011J\u0011\u0010\u0080\u0001\u001a\u00020\rH\u0016¢\u0006\u0005\b\u0080\u0001\u0010\u0011J\"\u0010\u0081\u0001\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010G\u001a\u00020#H\u0016¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0011\u0010\u0083\u0001\u001a\u00020\rH\u0016¢\u0006\u0005\b\u0083\u0001\u0010\u0011J\u0011\u0010\u0084\u0001\u001a\u00020\rH\u0016¢\u0006\u0005\b\u0084\u0001\u0010\u0011J#\u0010\u0087\u0001\u001a\u00020\r2\u0007\u0010\u0085\u0001\u001a\u00020\u00152\u0007\u0010\u0086\u0001\u001a\u00020\u0015H\u0016¢\u0006\u0005\b\u0087\u0001\u0010\u0019J\u001a\u0010\u0089\u0001\u001a\u00020\r2\u0007\u0010\u0088\u0001\u001a\u00020\u0015H\u0016¢\u0006\u0005\b\u0089\u0001\u0010hJ\u0011\u0010\u008a\u0001\u001a\u00020\rH\u0014¢\u0006\u0005\b\u008a\u0001\u0010\u0011J\u0011\u0010\u008b\u0001\u001a\u00020\rH\u0014¢\u0006\u0005\b\u008b\u0001\u0010\u0011J3\u0010\u008d\u0001\u001a\u00020\r2\u0006\u0010M\u001a\u00020\u00152\u0007\u0010\u008c\u0001\u001a\u00020\u00152\u0006\u0010Q\u001a\u00020\u00152\u0006\u0010R\u001a\u00020\u0015H\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001a\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0019\u0010\u0095\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u001b\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0094\u0001R\u001a\u0010\u009d\u0001\u001a\u00030\u0096\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u0098\u0001R\u0019\u0010\u009f\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u0094\u0001R\u001a\u0010¡\u0001\u001a\u00030\u0096\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b \u0001\u0010\u0098\u0001R\u001a\u0010£\u0001\u001a\u00030\u008f\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b¢\u0001\u0010\u0091\u0001R\u001c\u0010§\u0001\u001a\u0005\u0018\u00010¤\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001a\u0010«\u0001\u001a\u00030¨\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u001a\u0010¯\u0001\u001a\u00030¬\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R\u0019\u0010±\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b°\u0001\u0010\u0094\u0001R\u0019\u0010³\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b²\u0001\u0010\u0094\u0001R\u001a\u0010µ\u0001\u001a\u00030\u0096\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b´\u0001\u0010\u0098\u0001R\u001b\u0010¸\u0001\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001¨\u0006½\u0001"}, d2 = {"Lcom/truecaller/flashsdk/ui/send/SendActivity;", "Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;", "Le/a/y/a/j/o;", "Le/a/y/a/j/t;", "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;", "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;", "Lcom/google/android/gms/tasks/OnCompleteListener;", "Lcom/google/android/gms/location/LocationSettingsResponse;", "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;", "Lcom/google/android/gms/maps/OnMapReadyCallback;", "Landroid/view/ActionMode$Callback;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "g0", "()V", "Landroid/view/View;", "ua", "()Landroid/view/View;", "", "imageUrl", "message", "O4", "(Ljava/lang/String;Ljava/lang/String;)V", "videoUrl", "d5", "onStart", "onResume", "c8", "Landroid/view/ActionMode;", AnalyticsConstants.MODE, "Landroid/view/MenuItem;", "item", "", "onActionItemClicked", "(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z", "Landroid/view/Menu;", "menu", "onCreateActionMode", "(Landroid/view/ActionMode;Landroid/view/Menu;)Z", "onPrepareActionMode", "onDestroyActionMode", "(Landroid/view/ActionMode;)V", "text", "", "initialSelectionStart", "initialSelectionEnd", "finalSelectionEnd", "N4", "(Ljava/lang/String;III)V", "N0", "cursorVisible", "l5", "(Z)V", "p8", "B2", "o9", "p0", "C8", "w8", "e0", "position", "v2", "(I)V", "u1", "Le/a/y/e/i;", "emoticon", "s", "(Le/a/y/e/i;)V", "enable", "A0", "", "size", "E3", "(F)V", "placeName", "locationImageUrl", "R9", "location", "lat", "long", "A5", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "m9", "Lcom/google/android/gms/maps/GoogleMap;", "map", "O3", "(Lcom/google/android/gms/maps/GoogleMap;)V", "B5", "F9", "history", AnalyticsConstants.NAME, "isFirstFlashSent", "", "timeLeft", "toPhone", "T3", "(Ljava/lang/String;Ljava/lang/String;ZJJ)V", "b5", "notificationId", "e3", "o", "(Ljava/lang/String;)V", "Y6", "P5", "t1", RemoteMessageConst.Notification.COLOR, "h2", "Lcom/truecaller/flashsdk/models/ImageFlash;", "imageFlash", "V5", "(Lcom/truecaller/flashsdk/models/ImageFlash;)V", "z0", "la", "drawable", "headerTextColor", "q5", "(II)V", "Landroid/net/Uri;", "uri", "Z0", "(Landroid/net/Uri;)V", "T4", "p5", "T7", "U9", "M4", "J7", "(Ljava/lang/String;Z)V", "g9", "J9", "url", "description", "D5", "hint", "c5", "onPause", "onDestroy", "locationMessage", "j5", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/widget/ImageView;", "z", "Landroid/widget/ImageView;", "closeReplyContact", "C", "Landroid/view/View;", "emojiContainer", "Landroid/widget/EditText;", "D", "Landroid/widget/EditText;", "mapContentTextSendV2", "E", "mapContainerV2", "x", "videoText", "A", "imageContainerV2", "v", "flashText", "B", "imageContentV2", "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;", "K", "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;", "flashAddImageButton", "com/truecaller/flashsdk/ui/send/SendActivity$f", "L", "Lcom/truecaller/flashsdk/ui/send/SendActivity$f;", "newIncomingFlashReceiver", "com/truecaller/flashsdk/ui/send/SendActivity$m", "M", "Lcom/truecaller/flashsdk/ui/send/SendActivity$m;", "uploadMediaReceiver", "y", "bodyContainer", "u", "rootView", "w", "imageText", "J", "Landroid/view/ActionMode;", "actionMode", "<init>", "N", C22021b.f61237c, AbstractC2405c.f7629a, "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.send.SendActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity.class */
public final class SendActivity extends BaseFlashActivity<AbstractC21566o, AbstractC21571t, FlashSendFooterView> implements AbstractC21566o, FlashSendFooterView.AbstractC3951a, OnCompleteListener<LocationSettingsResponse>, FlashContactHeaderView.AbstractC3947a, OnMapReadyCallback, ActionMode.Callback {

    /* renamed from: N */
    public static final C3972b f12191N = new C3972b(null);

    /* renamed from: A */
    public View f12192A;

    /* renamed from: B */
    public ImageView f12193B;

    /* renamed from: C */
    public View f12194C;

    /* renamed from: D */
    public EditText f12195D;

    /* renamed from: E */
    public View f12196E;

    /* renamed from: J */
    public ActionMode f12197J;

    /* renamed from: K */
    public FlashAddBackgroundButton f12198K;

    /* renamed from: L */
    public final C3976f f12199L = new C3976f();

    /* renamed from: M */
    public final C3983m f12200M = new C3983m();

    /* renamed from: u */
    public View f12201u;

    /* renamed from: v */
    public EditText f12202v;

    /* renamed from: w */
    public EditText f12203w;

    /* renamed from: x */
    public EditText f12204x;

    /* renamed from: y */
    public View f12205y;

    /* renamed from: z */
    public ImageView f12206z;

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$a.class */
    public static final class View$OnClickListenerC3971a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f12207a;

        /* renamed from: b */
        public final /* synthetic */ Object f12208b;

        public View$OnClickListenerC3971a(int i, Object obj) {
            this.f12207a = i;
            this.f12208b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f12207a;
            if (i == 0) {
                ((SendActivity) this.f12208b).m35365ta().mo9413s();
            } else if (i != 1) {
                throw null;
            } else {
                ((SendActivity) this.f12208b).m35365ta().mo9420d();
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$b.class */
    public static final class C3972b {
        public C3972b(f fVar) {
        }

        /* renamed from: a */
        public static Intent m35328a(C3972b c3972b, Context context, long j, String str, String str2, int i, String str3, String str4, boolean z, int i2) {
            if ((i2 & 16) != 0) {
                i = -1;
            }
            if ((i2 & 32) != 0) {
                str3 = null;
            }
            if ((i2 & 64) != 0) {
                str4 = null;
            }
            if ((i2 & 128) != 0) {
                z = true;
            }
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(context, SendActivity.class);
            intent.putExtra("to_phone", j);
            intent.putExtra("to_name", str);
            intent.putExtra("screen_context", str2);
            intent.addFlags(268435456);
            intent.addFlags(536870912);
            if (i != -1) {
                intent.putExtra("notification_id", i);
            }
            intent.putExtra("prefilled_text", str3);
            intent.putExtra("preset_flash_type", str4);
            intent.putExtra("show_waiting", z);
            return intent;
        }

        /* renamed from: b */
        public final Intent m35327b(Context context, long j, String str, String str2, String str3, String str4, String str5, boolean z, String str6) {
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(context, SendActivity.class);
            intent.putExtra("to_phone", j);
            intent.putExtra("to_name", str);
            intent.putExtra("image", str3);
            intent.putExtra("video", str4);
            intent.putExtra("description", str5);
            intent.putExtra("background", str6);
            intent.putExtra(AnalyticsConstants.MODE, z);
            intent.putExtra("screen_context", str2);
            intent.addFlags(268435456);
            intent.addFlags(536870912);
            return intent;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$c */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$c.class */
    public static final class C3973c implements GoogleMap.InfoWindowAdapter {

        /* renamed from: a */
        public final Context f12209a;

        /* renamed from: b */
        public final String f12210b;

        public C3973c(Context context, String str) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "message");
            this.f12209a = context;
            this.f12210b = str;
        }

        @Override // com.google.android.gms.maps.GoogleMap.InfoWindowAdapter
        /* renamed from: a */
        public View mo35326a(Marker marker) {
            return null;
        }

        @Override // com.google.android.gms.maps.GoogleMap.InfoWindowAdapter
        /* renamed from: b */
        public View mo35325b(Marker marker) {
            View inflate = View.inflate(this.f12209a, C3909R.layout.layout_map_info_window, null);
            View findViewById = inflate.findViewById(C3909R.C3911id.title);
            l.d(findViewById, "view.findViewById<TextView>(R.id.title)");
            ((TextView) findViewById).setText(this.f12210b);
            View findViewById2 = inflate.findViewById(C3909R.C3911id.mapsButton);
            l.d(findViewById2, "view.findViewById<ImageButton>(R.id.mapsButton)");
            ((ImageButton) findViewById2).setVisibility(8);
            View findViewById3 = inflate.findViewById(C3909R.C3911id.mapsDivider);
            l.d(findViewById3, "view.findViewById<View>(R.id.mapsDivider)");
            findViewById3.setVisibility(8);
            l.d(inflate, ViewAction.VIEW);
            return inflate;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$d */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$d.class */
    public static final /* synthetic */ class C3974d extends j implements s1.z.b.l<CharSequence, s> {
        public C3974d(AbstractC21571t abstractC21571t) {
            super(1, abstractC21571t, AbstractC21571t.class, "onTextChanged", "onTextChanged(Ljava/lang/CharSequence;)V", 0);
        }

        /* renamed from: d */
        public Object m35324d(Object obj) {
            ((AbstractC21571t) ((b) this).b).mo9423T0((CharSequence) obj);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$e */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$e.class */
    public static final /* synthetic */ class C3975e extends j implements s1.z.b.l<CharSequence, s> {
        public C3975e(AbstractC21571t abstractC21571t) {
            super(1, abstractC21571t, AbstractC21571t.class, "onTextChanged", "onTextChanged(Ljava/lang/CharSequence;)V", 0);
        }

        /* renamed from: d */
        public Object m35323d(Object obj) {
            ((AbstractC21571t) ((b) this).b).mo9423T0((CharSequence) obj);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$f */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$f.class */
    public static final class C3976f extends BroadcastReceiver {
        public C3976f() {
            SendActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            SendActivity.this.m35365ta().mo9414m(intent.getExtras());
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$g */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$g.class */
    public static final class RunnableC3977g implements Runnable {
        public RunnableC3977g() {
            SendActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            EditText m35329wa = SendActivity.m35329wa(SendActivity.this);
            m35329wa.setCursorVisible(true);
            C19286f.m13679Y(m35329wa, false, 0L, 3);
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$h */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$h.class */
    public static final class RunnableC3978h implements Runnable {
        public RunnableC3978h() {
            SendActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            EditText editText = SendActivity.this.f12195D;
            if (editText != null) {
                editText.setCursorVisible(true);
                C19286f.m13679Y(editText, false, 0L, 3);
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$i */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$i.class */
    public static final class RunnableC3979i implements Runnable {
        public RunnableC3979i() {
            SendActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (SendActivity.m35329wa(SendActivity.this).getVisibility() == 0) {
                C19286f.m13679Y(SendActivity.m35329wa(SendActivity.this), true, 0L, 2);
                return;
            }
            EditText editText = SendActivity.this.f12203w;
            if (editText != null) {
                C19286f.m13679Y(editText, true, 0L, 2);
            } else {
                l.l("imageText");
                throw null;
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$j */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$j.class */
    public static final class View$OnClickListenerC3980j implements View.OnClickListener {
        public View$OnClickListenerC3980j(C3973c c3973c, String str, String str2) {
            SendActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SendActivity.this.m35365ta().mo9420d();
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$k */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$k.class */
    public static final /* synthetic */ class C3981k extends j implements s1.z.b.l<CharSequence, s> {
        public C3981k(AbstractC21571t abstractC21571t) {
            super(1, abstractC21571t, AbstractC21571t.class, "onTextChanged", "onTextChanged(Ljava/lang/CharSequence;)V", 0);
        }

        /* renamed from: d */
        public Object m35322d(Object obj) {
            ((AbstractC21571t) ((b) this).b).mo9423T0((CharSequence) obj);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$l */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$l.class */
    public static final class RunnableC3982l implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ String f12217b;

        public RunnableC3982l(String str) {
            SendActivity.this = r4;
            this.f12217b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            View$OnClickListenerC21577e m42943J = SendActivity.this.getSupportFragmentManager().m42943J(C3909R.C3911id.waiting_container);
            if (m42943J != null) {
                m42943J.m9411OA(this.f12217b);
            }
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.send.SendActivity$m */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/send/SendActivity$m.class */
    public static final class C3983m extends BroadcastReceiver {
        public C3983m() {
            SendActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            Bundle extras = intent.getExtras();
            if (extras != null) {
                SendActivity.this.m35365ta().mo9421a(extras.getString("extra_state"), (ImageFlash) extras.getParcelable("extra_image_flash"));
            }
        }
    }

    /* renamed from: wa */
    public static final /* synthetic */ EditText m35329wa(SendActivity sendActivity) {
        EditText editText = sendActivity.f12202v;
        if (editText != null) {
            return editText;
        }
        l.l("flashText");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: A0 */
    public void mo9644A0(boolean z) {
        m35368qa().m9576n1(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: A5 */
    public void mo9643A5(String str, String str2, String str3) {
        l.e(str, "location");
        l.e(str2, "lat");
        l.e(str3, "long");
        C3973c c3973c = new C3973c(this, str);
        GoogleMap googleMap = this.f12069s;
        if (googleMap != null) {
            View view = this.f12196E;
            if (view != null) {
                view.setVisibility(0);
            }
            EditText editText = this.f12195D;
            if (editText != null) {
                editText.setVisibility(0);
            }
            View view2 = this.f12205y;
            if (view2 == null) {
                l.l("bodyContainer");
                throw null;
            }
            view2.setVisibility(8);
            m35364va().setVisibility(8);
            FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
            if (flashAddBackgroundButton != null) {
                flashAddBackgroundButton.setVisibility(8);
            }
            EditText editText2 = this.f12202v;
            if (editText2 == null) {
                l.l("flashText");
                throw null;
            }
            editText2.setVisibility(8);
            View view3 = this.f12194C;
            if (view3 == null) {
                l.l("emojiContainer");
                throw null;
            }
            view3.setVisibility(8);
            ImageView imageView = this.f12206z;
            if (imageView == null) {
                l.l("closeReplyContact");
                throw null;
            }
            imageView.setVisibility(0);
            ((FlashSendFooterView) m35368qa()).getSendLocation().setVisibility(8);
            EditText editText3 = this.f12195D;
            if (editText3 != null) {
                editText3.setCustomSelectionActionModeCallback(this);
            }
            ((FlashSendFooterView) m35368qa()).m9576n1(true);
            googleMap.m38706c(c3973c);
            C17891a1.C17902k.m15616e1(googleMap, Double.parseDouble(str2), Double.parseDouble(str3), true);
            ImageView imageView2 = this.f12206z;
            if (imageView2 == null) {
                l.l("closeReplyContact");
                throw null;
            }
            imageView2.setOnClickListener(new View$OnClickListenerC3980j(c3973c, str2, str3));
            EditText editText4 = this.f12195D;
            if (editText4 == null) {
                return;
            }
            editText4.setVisibility(0);
            C17891a1.C17902k.m15603j(editText4, new C3981k((AbstractC21571t) m35365ta()));
            C17891a1.C17902k.m15619d1(editText4);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: B2 */
    public void mo9453B2() {
        EditText editText = this.f12202v;
        if (editText != null) {
            editText.postDelayed(new RunnableC3977g(), 200L);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: B5 */
    public void mo9642B5() {
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setVisibility(0);
        m35366sa().setVisibility(8);
        m35368qa().m9575o1(false);
        FlashSendFooterView m35368qa = m35368qa();
        EditText editText2 = this.f12202v;
        if (editText2 != null) {
            m35368qa.m9576n1(!TextUtils.isEmpty(editText2.getText()));
        } else {
            l.l("flashText");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: C8 */
    public void mo9452C8() {
        String string = getString(C3909R.string.tip_send_edit_text);
        l.d(string, "getString(R.string.tip_send_edit_text)");
        int i = C3909R.C3910drawable.flash_ic_tooltip_center_bottom;
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(string, "toolTipText");
        View inflate = LayoutInflater.from(this).inflate(C3909R.layout.flash_v2_pop_up, (ViewGroup) null);
        View findViewById = inflate.findViewById(C3909R.C3911id.text);
        l.d(findViewById, "view.findViewById<TextView>(R.id.text)");
        ((TextView) findViewById).setText(string);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, false);
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        popupWindow.setAnimationStyle(16973826);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(new C21584c.View$OnTouchListenerC21585a(popupWindow));
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(this, i);
        if (m1789b != null) {
            m1789b.setColorFilter(C19291g.m13538k0(this, C3909R.attr.theme_contrast_bg), PorterDuff.Mode.SRC_IN);
        }
        l.d(inflate, ViewAction.VIEW);
        inflate.setBackground(m1789b);
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        l.e(editText, ViewAction.VIEW);
        Context context = editText.getContext();
        Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
        if (((Activity) context).isFinishing() || editText.getApplicationWindowToken() == null) {
            return;
        }
        View contentView = popupWindow.getContentView();
        contentView.measure(0, 0);
        int measuredWidth = editText.getMeasuredWidth() / 2;
        l.d(contentView, "contentView");
        popupWindow.showAsDropDown(editText, measuredWidth - (contentView.getMeasuredWidth() / 2), -(contentView.getMeasuredHeight() + editText.getMeasuredHeight() + 0));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: D5 */
    public void mo9451D5(String str, String str2) {
        l.e(str, "url");
        l.e(str2, "description");
        C21852d<Bitmap> mo8415f = m35367ra().mo8415f();
        mo8415f.f61767J = str;
        mo8415f.f61771N = true;
        ImageView imageView = this.f12193B;
        if (imageView == null) {
            l.l("imageContentV2");
            throw null;
        }
        mo8415f.m8429M(new BaseFlashActivity.C3934a(this, imageView));
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setText(str2);
        editText.setSelection(editText.getText().length());
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: E3 */
    public void mo9450E3(float f) {
        EditText editText = this.f12202v;
        if (editText != null) {
            editText.setTextSize(f);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: F9 */
    public void mo9640F9() {
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setVisibility(0);
        m35366sa().setVisibility(8);
        m35368qa().m9575o1(false);
        m35368qa().m9583h1();
        FlashSendFooterView m35368qa = m35368qa();
        EditText editText2 = this.f12202v;
        if (editText2 == null) {
            l.l("flashText");
            throw null;
        }
        m35368qa.m9576n1(!TextUtils.isEmpty(editText2.getText()));
        View view = this.f12196E;
        if (view != null) {
            view.setVisibility(8);
        }
        EditText editText3 = this.f12195D;
        if (editText3 != null) {
            editText3.setVisibility(8);
        }
        View view2 = this.f12205y;
        if (view2 == null) {
            l.l("bodyContainer");
            throw null;
        }
        view2.setVisibility(0);
        m35364va().setVisibility(8);
        FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
        if (flashAddBackgroundButton != null) {
            flashAddBackgroundButton.setVisibility(0);
        }
        View view3 = this.f12194C;
        if (view3 == null) {
            l.l("emojiContainer");
            throw null;
        }
        view3.setVisibility(0);
        ImageView imageView = this.f12206z;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(0);
        MapView mapView = this.f12064n;
        if (mapView != null) {
            mapView.f6240a.m38754j();
        }
        MapView mapView2 = this.f12064n;
        if (mapView2 == null) {
            return;
        }
        mapView2.f6240a.m38761c();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: J7 */
    public void mo9635J7(String str, boolean z) {
        l.e(str, "message");
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setEnabled(z);
        editText.setText(str);
        editText.setSelection(str.length());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: J9 */
    public void mo9449J9() {
        C27062a.m968b(this).m967c(this.f12199L, new IntentFilter("type_flash_received"));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: M4 */
    public void mo9631M4() {
        m35368qa().m9581j1();
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.FlashSendFooterView.AbstractC3951a
    /* renamed from: N0 */
    public void mo35331N0() {
        String str;
        Editable editable = null;
        if (m35366sa().getVisibility() == 0) {
            EditText editText = this.f12203w;
            if (editText == null) {
                l.l("imageText");
                throw null;
            }
            str = editText.getText().toString();
        } else {
            View view = this.f12062l;
            if (view == null) {
                l.l("videoContainer");
                throw null;
            } else if (view.getVisibility() == 0) {
                EditText editText2 = this.f12204x;
                if (editText2 == null) {
                    l.l("videoText");
                    throw null;
                }
                str = editText2.getText().toString();
            } else {
                EditText editText3 = this.f12195D;
                if (editText3 == null || editText3.getVisibility() != 0) {
                    EditText editText4 = this.f12202v;
                    if (editText4 == null) {
                        l.l("flashText");
                        throw null;
                    }
                    str = editText4.getText().toString();
                } else {
                    EditText editText5 = this.f12195D;
                    if (editText5 != null) {
                        editable = editText5.getText();
                    }
                    str = String.valueOf(editable);
                }
            }
        }
        m35365ta().mo9416k(str);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: N4 */
    public void mo9630N4(String str, int i, int i2, int i3) {
        l.e(str, "text");
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.getText().replace(i, i2, str);
        EditText editText2 = this.f12202v;
        if (editText2 != null) {
            editText2.setSelection(i3);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // com.google.android.gms.maps.OnMapReadyCallback
    /* renamed from: O3 */
    public void mo29248O3(GoogleMap googleMap) {
        this.f12069s = googleMap;
        m35365ta().mo9654a1();
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: O4 */
    public void mo9628O4(String str, String str2) {
        l.e(str, "imageUrl");
        l.e(str2, "message");
        super.mo9628O4(str, str2);
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setVisibility(8);
        EditText editText2 = this.f12203w;
        if (editText2 == null) {
            l.l("imageText");
            throw null;
        }
        editText2.setText(str2);
        EditText editText3 = this.f12203w;
        if (editText3 == null) {
            l.l("imageText");
            throw null;
        }
        editText3.setSelection(editText3.getText().length());
        m35368qa().m9576n1(true);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: P5 */
    public void mo9448P5() {
        View view = this.f12192A;
        if (view == null) {
            l.l("imageContainerV2");
            throw null;
        }
        view.setVisibility(0);
        ImageView imageView = this.f12206z;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(0);
        m35364va().setVisibility(8);
        FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
        if (flashAddBackgroundButton != null) {
            flashAddBackgroundButton.setVisibility(0);
        }
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setVisibility(0);
        View view2 = this.f12194C;
        if (view2 == null) {
            l.l("emojiContainer");
            throw null;
        }
        view2.setVisibility(0);
        FlashAddBackgroundButton flashAddBackgroundButton2 = this.f12198K;
        if (flashAddBackgroundButton2 != null) {
            flashAddBackgroundButton2.f12094U.setImageResource(C3909R.C3910drawable.ic_flash_outline_remove_photo_alternate);
            flashAddBackgroundButton2.f12093T.setText(flashAddBackgroundButton2.getResources().getString(C3909R.string.flash_remove_photo));
        }
        m35368qa().m9576n1(true);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: R9 */
    public void mo9623R9(String str, String str2) {
        l.e(str, "placeName");
        l.e(str2, "locationImageUrl");
        EditText editText = this.f12203w;
        if (editText == null) {
            l.l("imageText");
            throw null;
        }
        editText.setText(str);
        EditText editText2 = this.f12202v;
        if (editText2 == null) {
            l.l("flashText");
            throw null;
        }
        editText2.setVisibility(8);
        m35366sa().setVisibility(0);
        C22234h mo8414k = m35367ra().mo8414k();
        C21852d c21852d = (C21852d) mo8414k;
        c21852d.f61767J = str2;
        c21852d.f61771N = true;
        C21852d mo8087u = ((C21852d) mo8414k).mo8087u(C3909R.C3910drawable.ic_map_placeholder);
        ImageView imageView = this.f12059i;
        if (imageView == null) {
            l.l("imageContent");
            throw null;
        }
        mo8087u.m8427O(imageView);
        EditText editText3 = this.f12203w;
        if (editText3 == null) {
            l.l("imageText");
            throw null;
        }
        editText3.setSelection(editText3.getText().length());
        m35368qa().m9575o1(true);
        EditText editText4 = this.f12203w;
        if (editText4 != null) {
            editText4.requestFocus();
        } else {
            l.l("imageText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: T3 */
    public void mo9447T3(String str, String str2, boolean z, long j, long j2) {
        l.e(str, "history");
        l.e(str2, AnalyticsConstants.NAME);
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        C19286f.m13679Y(editText, false, 0L, 2);
        m35368qa().m9584g1();
        m35368qa().setVisibility(8);
        View view = this.f12205y;
        if (view == null) {
            l.l("bodyContainer");
            throw null;
        }
        view.setVisibility(8);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        int i = C3909R.C3911id.waiting_container;
        c26907a.m1120m(i, View$OnClickListenerC21577e.f60211n.m9410a(str, j, str2, z, j2), null);
        c26907a.f75322f = 4097;
        c26907a.mo1126g();
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g != null) {
            abstractC21728g.mo9150c();
        }
        mo9639H4();
        View findViewById = findViewById(i);
        l.d(findViewById, ViewAction.VIEW);
        findViewById.setVisibility(0);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: T4 */
    public void mo9621T4() {
        m35368qa().m9579l1();
        FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
        if (flashAddBackgroundButton != null) {
            flashAddBackgroundButton.setVisibility(8);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: T7 */
    public void mo9620T7() {
        m35368qa().m9579l1();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: U9 */
    public void mo9618U9() {
        m35368qa().m9578m1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: V5 */
    public void mo9446V5(ImageFlash imageFlash) {
        l.e(imageFlash, "imageFlash");
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(imageFlash, "imageFlash");
        Intent intent = new Intent((Context) this, (Class<?>) FlashMediaService.class);
        intent.putExtra("extra_image_flash", imageFlash);
        startService(intent);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: Y6 */
    public void mo9445Y6() {
        this.f12198K = (FlashAddBackgroundButton) findViewById(C3909R.C3911id.addPhoto);
        View findViewById = findViewById(C3909R.C3911id.closeButtonContact);
        l.d(findViewById, "findViewById(R.id.closeButtonContact)");
        this.f12206z = (ImageView) findViewById;
        this.f12060j = (ImageView) findViewById(C3909R.C3911id.imageBackgroundV2);
        View findViewById2 = findViewById(C3909R.C3911id.flashImageContainerV2);
        l.d(findViewById2, "findViewById(R.id.flashImageContainerV2)");
        this.f12192A = findViewById2;
        View findViewById3 = findViewById(C3909R.C3911id.imageContentV2);
        l.d(findViewById3, "findViewById<ImageView>(R.id.imageContentV2)");
        this.f12193B = (ImageView) findViewById3;
        ImageView imageView = this.f12206z;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        C17891a1.C17902k.m15603j(editText, new C3974d(m35365ta()));
        C17891a1.C17902k.m15619d1(editText);
        editText.setVisibility(0);
        editText.setCustomSelectionActionModeCallback(this);
        FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
        if (flashAddBackgroundButton != null) {
            flashAddBackgroundButton.setVisibility(0);
        }
        ImageView imageView2 = this.f12206z;
        if (imageView2 == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView2.setVisibility(0);
        m35364va().setVisibility(8);
        FlashAddBackgroundButton flashAddBackgroundButton2 = this.f12198K;
        if (flashAddBackgroundButton2 != null) {
            flashAddBackgroundButton2.setOnClickListener(new View$OnClickListenerC3971a(0, this));
        }
        ImageView imageView3 = this.f12206z;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new View$OnClickListenerC3971a(1, this));
        } else {
            l.l("closeReplyContact");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: Z0 */
    public void mo9444Z0(Uri uri) {
        l.e(uri, "uri");
        C21852d<Bitmap> mo8415f = m35367ra().mo8415f();
        mo8415f.f61767J = uri;
        mo8415f.f61771N = true;
        ImageView imageView = this.f12193B;
        if (imageView != null) {
            mo8415f.m8429M(new BaseFlashActivity.C3934a(this, imageView));
        } else {
            l.l("imageContentV2");
            throw null;
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: b5 */
    public void mo9615b5() {
        super.mo9615b5();
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setText((CharSequence) null);
        EditText editText2 = this.f12203w;
        if (editText2 == null) {
            l.l("imageText");
            throw null;
        }
        editText2.setText((CharSequence) null);
        View view = this.f12205y;
        if (view == null) {
            l.l("bodyContainer");
            throw null;
        }
        view.setVisibility(0);
        EditText editText3 = this.f12202v;
        if (editText3 != null) {
            editText3.setVisibility(0);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: c5 */
    public void mo9614c5(String str) {
        l.e(str, "hint");
        EditText editText = this.f12202v;
        if (editText != null) {
            editText.setHint(str);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: c8 */
    public void mo9613c8() {
        ActionMode actionMode = this.f12197J;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: d5 */
    public void mo9612d5(String str, String str2) {
        l.e(str, "videoUrl");
        l.e(str2, "message");
        super.mo9612d5(str, str2);
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setVisibility(8);
        EditText editText2 = this.f12204x;
        if (editText2 == null) {
            l.l("videoText");
            throw null;
        }
        editText2.setText(str2);
        EditText editText3 = this.f12204x;
        if (editText3 == null) {
            l.l("videoText");
            throw null;
        }
        EditText editText4 = this.f12203w;
        if (editText4 == null) {
            l.l("imageText");
            throw null;
        }
        editText3.setSelection(editText4.getText().length());
        m35368qa().m9576n1(true);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: e0 */
    public void mo9443e0() {
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g != null) {
            abstractC21728g.mo9150c();
        }
        C19286f.m13679Y(m35369pa(), false, 0L, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: e3 */
    public void mo9442e3(int i) {
        Object systemService = getSystemService(RemoteMessageConst.NOTIFICATION);
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        ((NotificationManager) systemService).cancel(i);
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity, p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: g0 */
    public void mo9609g0() {
        super.mo9609g0();
        View findViewById = findViewById(C3909R.C3911id.containerSend);
        l.d(findViewById, "findViewById(R.id.containerSend)");
        this.f12201u = findViewById;
        View findViewById2 = findViewById(C3909R.C3911id.editTextSendFlash);
        l.d(findViewById2, "findViewById(R.id.editTextSendFlash)");
        this.f12202v = (EditText) findViewById2;
        View findViewById3 = findViewById(C3909R.C3911id.imageText);
        l.d(findViewById3, "findViewById(R.id.imageText)");
        this.f12203w = (EditText) findViewById3;
        View findViewById4 = findViewById(C3909R.C3911id.videoText);
        l.d(findViewById4, "findViewById(R.id.videoText)");
        this.f12204x = (EditText) findViewById4;
        View findViewById5 = findViewById(C3909R.C3911id.body_container);
        l.d(findViewById5, "findViewById(R.id.body_container)");
        this.f12205y = findViewById5;
        View findViewById6 = findViewById(C3909R.C3911id.emojiContainer);
        l.d(findViewById6, "findViewById(R.id.emojiContainer)");
        this.f12194C = findViewById6;
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        C17891a1.C17902k.m15603j(editText, new C3975e(m35365ta()));
        EditText editText2 = this.f12202v;
        if (editText2 == null) {
            l.l("flashText");
            throw null;
        }
        C17891a1.C17902k.m15619d1(editText2);
        m35368qa().setActionListener(this);
        m35369pa().setContactClickListener$flash_release(this);
        EditText editText3 = this.f12202v;
        if (editText3 == null) {
            l.l("flashText");
            throw null;
        }
        editText3.clearFocus();
        EditText editText4 = this.f12202v;
        if (editText4 != null) {
            editText4.setCustomSelectionActionModeCallback(this);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: g9 */
    public void mo9441g9() {
        C27062a.m968b(this).m967c(this.f12200M, new IntentFilter("action_image_flash"));
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: h2 */
    public void mo9440h2(int i) {
        EditText editText = this.f12202v;
        if (editText != null) {
            editText.setHintTextColor(i);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: j5 */
    public void mo9605j5(String str, String str2, String str3, String str4) {
        l.e(str, "placeName");
        l.e(str2, "locationMessage");
        l.e(str3, "lat");
        l.e(str4, "long");
        mo9643A5(str, str3, str4);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: l5 */
    public void mo9601l5(boolean z) {
        EditText editText = this.f12202v;
        if (editText != null) {
            editText.setCursorVisible(z);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: la */
    public void mo9439la() {
        View view = this.f12196E;
        if (view != null) {
            view.setVisibility(8);
        }
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setVisibility(8);
        m35364va().setVisibility(0);
        ImageView imageView = this.f12206z;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(8);
        FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
        if (flashAddBackgroundButton == null) {
            return;
        }
        flashAddBackgroundButton.setVisibility(8);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: m9 */
    public void mo9599m9() {
        this.f12196E = findViewById(C3909R.C3911id.flashMapContainerV2);
        this.f12064n = (MapView) findViewById(C3909R.C3911id.flashMapView);
        this.f12195D = (EditText) findViewById(C3909R.C3911id.mapContentTextSendV2);
        MapView mapView = this.f12064n;
        if (mapView != null) {
            mapView.m38703b(null);
            mapView.m38704a(this);
            mapView.f6240a.m38757g();
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: o */
    public void mo9438o(String str) {
        l.e(str, "message");
        m35368qa().postDelayed(new RunnableC3982l(str), 200L);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: o9 */
    public void mo9596o9() {
        EditText editText = this.f12195D;
        if (editText != null) {
            editText.postDelayed(new RunnableC3978h(), 200L);
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return false;
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C3909R.layout.activity_send_flash);
        C21632c c21632c = C21632c.f60288b;
        AbstractC21666a m9331a = C21632c.m9331a();
        C21567p c21567p = new C21567p(this);
        C25225a.m3846s(c21567p, C21567p.class);
        C25225a.m3846s(m9331a, AbstractC21666a.class);
        C21565n c21565n = new C21565n(m9331a);
        C21556e c21556e = new C21556e(m9331a);
        C21555d c21555d = new C21555d(m9331a);
        C21563l c21563l = new C21563l(m9331a);
        C21564m c21564m = new C21564m(m9331a);
        C21554c c21554c = new C21554c(m9331a);
        C21552a c21552a = new C21552a(m9331a);
        C21569r c21569r = new C21569r(c21567p);
        Object obj = o3.c.b.c;
        if (!(c21569r instanceof o3.c.b)) {
            c21569r = new o3.c.b(c21569r);
        }
        C21568q c21568q = new C21568q(c21567p, c21569r);
        if (!(c21568q instanceof o3.c.b)) {
            c21568q = new o3.c.b(c21568q);
        }
        C21570s c21570s = new C21570s(c21567p, c21565n, c21556e, c21555d, c21563l, c21564m, c21554c, c21552a, c21568q, new C21559h(m9331a), new C21561j(m9331a), new C21560i(m9331a), new C21558g(m9331a), new C21557f(m9331a), new C21562k(m9331a), new C21553b(m9331a));
        if (!(c21570s instanceof o3.c.b)) {
            c21570s = new o3.c.b(c21570s);
        }
        this.f12051a = (AbstractC21571t) c21570s.get();
        Objects.requireNonNull(m9331a.mo9213b(), "Cannot return null from a non-@Nullable component method");
        AbstractC8541a mo9211d = m9331a.mo9211d();
        Objects.requireNonNull(mo9211d, "Cannot return null from a non-@Nullable component method");
        this.f12052b = mo9211d;
        m35365ta().mo9650f1(this);
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        this.f12197J = actionMode;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity
    public void onDestroy() {
        C27062a.m968b(this).m965e(this.f12199L);
        C27062a.m968b(this).m965e(this.f12200M);
        super.onDestroy();
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f12197J = null;
    }

    public void onPause() {
        SendActivity.super.onPause();
        m35365ta().onPause();
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }

    public void onResume() {
        m35365ta().onResume();
        SendActivity.super.onResume();
    }

    public void onStart() {
        SendActivity.super.onStart();
        m35365ta().onStart();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: p0 */
    public void mo9595p0() {
        EditText editText = this.f12202v;
        if (editText != null) {
            editText.postDelayed(new RunnableC3979i(), 200L);
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: p5 */
    public void mo9594p5() {
        m35368qa().m9581j1();
        FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
        if (flashAddBackgroundButton != null) {
            flashAddBackgroundButton.setVisibility(0);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: p8 */
    public void mo9593p8() {
        EditText editText = this.f12202v;
        if (editText != null) {
            editText.requestFocus();
        } else {
            l.l("flashText");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: q5 */
    public void mo9592q5(int i, int i2) {
        m35369pa().setBackground(C19291g.m13600P(this, i));
        m35369pa().setHeaderTextColor(i2);
    }

    @Override // p193e.p194a.p1365y.p1387e.C21737k.AbstractC21738a
    /* renamed from: s */
    public void mo9141s(C21733i c21733i) {
        l.e(c21733i, "emoticon");
        AbstractC21571t m35365ta = m35365ta();
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        String obj = editText.getText().toString();
        EditText editText2 = this.f12202v;
        if (editText2 == null) {
            l.l("flashText");
            throw null;
        }
        int selectionStart = editText2.getSelectionStart();
        EditText editText3 = this.f12202v;
        if (editText3 != null) {
            m35365ta.mo9651d1(obj, c21733i, selectionStart, editText3.getSelectionEnd());
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: t1 */
    public void mo9437t1() {
        View view = this.f12192A;
        if (view == null) {
            l.l("imageContainerV2");
            throw null;
        }
        view.setVisibility(8);
        ImageView imageView = this.f12206z;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(0);
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        editText.setVisibility(0);
        View view2 = this.f12194C;
        if (view2 == null) {
            l.l("emojiContainer");
            throw null;
        }
        view2.setVisibility(0);
        m35368qa().m9583h1();
        FlashSendFooterView m35368qa = m35368qa();
        EditText editText2 = this.f12202v;
        if (editText2 == null) {
            l.l("flashText");
            throw null;
        }
        m35368qa.m9576n1(!TextUtils.isEmpty(editText2.getText()));
        FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
        if (flashAddBackgroundButton != null) {
            flashAddBackgroundButton.setVisibility(0);
        }
        FlashAddBackgroundButton flashAddBackgroundButton2 = this.f12198K;
        if (flashAddBackgroundButton2 != null) {
            flashAddBackgroundButton2.f12094U.setImageResource(C3909R.C3910drawable.ic_flash_outline_add_photo_alternate);
            flashAddBackgroundButton2.f12093T.setText(flashAddBackgroundButton2.getResources().getString(C3909R.string.flash_add_photo));
        }
        ImageView imageView2 = this.f12060j;
        if (imageView2 == null) {
            return;
        }
        imageView2.setBackground(null);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d.AbstractC21507a
    /* renamed from: u1 */
    public void mo9573u1() {
        Boolean mo9147h;
        AbstractC21728g abstractC21728g = this.f12061k;
        if (abstractC21728g != null) {
            boolean isShowing = abstractC21728g.isShowing();
            AbstractC21728g abstractC21728g2 = this.f12061k;
            if (abstractC21728g2 == null || (mo9147h = abstractC21728g2.mo9147h()) == null) {
                return;
            }
            boolean booleanValue = mo9147h.booleanValue();
            AbstractC21571t m35365ta = m35365ta();
            EditText editText = this.f12202v;
            if (editText != null) {
                m35365ta.mo9656Y0(editText.getText().toString(), isShowing, booleanValue);
            } else {
                l.l("flashText");
                throw null;
            }
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.base.BaseFlashActivity
    /* renamed from: ua */
    public View mo35330ua() {
        View view = this.f12201u;
        if (view != null) {
            return view;
        }
        l.l("rootView");
        throw null;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d.AbstractC21507a
    /* renamed from: v2 */
    public void mo9572v2(int i) {
        AbstractC21571t m35365ta = m35365ta();
        EditText editText = this.f12202v;
        if (editText == null) {
            l.l("flashText");
            throw null;
        }
        String obj = editText.getText().toString();
        EditText editText2 = this.f12202v;
        if (editText2 == null) {
            l.l("flashText");
            throw null;
        }
        int selectionStart = editText2.getSelectionStart();
        EditText editText3 = this.f12202v;
        if (editText3 != null) {
            m35365ta.mo9649j1(obj, i, selectionStart, editText3.getSelectionEnd());
        } else {
            l.l("flashText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1370e.AbstractC21492e
    /* renamed from: w8 */
    public void mo9590w8() {
        m35368qa().m9580k1(C3909R.string.tip_use_location);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1377j.AbstractC21566o
    /* renamed from: z0 */
    public void mo9436z0() {
        View view = this.f12192A;
        if (view == null) {
            l.l("imageContainerV2");
            throw null;
        }
        view.setVisibility(8);
        m35364va().setVisibility(0);
        ImageView imageView = this.f12206z;
        if (imageView == null) {
            l.l("closeReplyContact");
            throw null;
        }
        imageView.setVisibility(8);
        FlashAddBackgroundButton flashAddBackgroundButton = this.f12198K;
        if (flashAddBackgroundButton == null) {
            return;
        }
        flashAddBackgroundButton.setVisibility(8);
    }
}

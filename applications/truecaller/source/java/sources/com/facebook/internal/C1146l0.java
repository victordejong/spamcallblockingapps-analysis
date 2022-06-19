package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.huawei.hms.api.FailedBinderCallBack;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.SupportMessenger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"�� \u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b;\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b5\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\f\bÇ\u0002\u0018��2\u00020\u0001:\u000eÏ\u0001Ð\u0001Ñ\u0001Ò\u0001Ó\u0001Ô\u0001Õ\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010~\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020y0x0wH\u0002J\u000e\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020y0xH\u0002J\u000f\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020y0xH\u0002J\u0013\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020yH\u0002J.\u0010\u0084\u0001\u001a\u00020A2\u0010\u0010\u0085\u0001\u001a\u000b\u0012\u0004\u0012\u00020A\u0018\u00010\u0086\u00012\u0007\u0010\u0087\u0001\u001a\u00020A2\b\u0010\u0088\u0001\u001a\u00030\u0089\u0001H\u0007J\u0018\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0007J\u0093\u0001\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u00012\b\u0010\u0090\u0001\u001a\u00030\u0091\u00012\u0007\u0010\u0092\u0001\u001a\u00020\u00042\u0010\u0010\u0093\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020\u00042\b\u0010\u0096\u0001\u001a\u00030\u0097\u00012\b\u0010\u0098\u0001\u001a\u00030\u0097\u00012\b\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u00042\u0007\u0010\u009c\u0001\u001a\u00020\u00042\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010\u009e\u0001\u001a\u00030\u0097\u00012\b\u0010\u009f\u0001\u001a\u00030\u0097\u00012\b\u0010 \u0001\u001a\u00030\u0097\u0001H\u0007J½\u0001\u0010¡\u0001\u001a\u0005\u0018\u00010\u008f\u00012\u0007\u0010\u0083\u0001\u001a\u00020y2\u0007\u0010\u0092\u0001\u001a\u00020\u00042\u0010\u0010\u0093\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020\u00042\b\u0010\u0098\u0001\u001a\u00030\u0097\u00012\b\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u00042\u0007\u0010\u009c\u0001\u001a\u00020\u00042\b\u0010¢\u0001\u001a\u00030\u0097\u00012\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010\u009e\u0001\u001a\u00030\u0097\u00012\b\u0010£\u0001\u001a\u00030¤\u00012\b\u0010\u009f\u0001\u001a\u00030\u0097\u00012\b\u0010 \u0001\u001a\u00030\u0097\u00012\t\u0010¥\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¦\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010§\u0001\u001a\u0004\u0018\u00010\u0004H\u0002JD\u0010¨\u0001\u001a\u0005\u0018\u00010\u008f\u00012\b\u0010\u0090\u0001\u001a\u00030\u0091\u00012\t\u0010©\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010ª\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010«\u0001\u001a\u0005\u0018\u00010¬\u00012\n\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0007J\u0016\u0010®\u0001\u001a\u0005\u0018\u00010\u008f\u00012\b\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0007J.\u0010¯\u0001\u001a\u0005\u0018\u00010\u008f\u00012\b\u0010°\u0001\u001a\u00030\u008f\u00012\n\u0010±\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010²\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0007JÆ\u0001\u0010³\u0001\u001a\t\u0012\u0005\u0012\u00030\u008f\u00010x2\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u00012\u0007\u0010\u0092\u0001\u001a\u00020\u00042\u0010\u0010\u0093\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u00020\u00042\b\u0010\u0096\u0001\u001a\u00030\u0097\u00012\b\u0010\u0098\u0001\u001a\u00030\u0097\u00012\b\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u00042\u0007\u0010\u009c\u0001\u001a\u00020\u00042\b\u0010¢\u0001\u001a\u00030\u0097\u00012\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u00042\b\u0010\u009e\u0001\u001a\u00030\u0097\u00012\b\u0010\u009f\u0001\u001a\u00030\u0097\u00012\b\u0010 \u0001\u001a\u00030\u0097\u00012\t\u0010¥\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¦\u0001\u001a\u0004\u0018\u00010\u00042\u000b\b\u0002\u0010§\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J\u0019\u0010´\u0001\u001a\t\u0012\u0004\u0012\u00020A0\u0086\u00012\u0007\u0010\u0083\u0001\u001a\u00020yH\u0002J\u0016\u0010µ\u0001\u001a\u0005\u0018\u00010\u008b\u00012\b\u0010¶\u0001\u001a\u00030\u008f\u0001H\u0007J\u0018\u0010·\u0001\u001a\u0005\u0018\u00010¸\u00012\n\u0010¶\u0001\u001a\u0005\u0018\u00010\u008f\u0001H\u0007J\u0016\u0010¹\u0001\u001a\u0005\u0018\u00010\u008b\u00012\b\u0010º\u0001\u001a\u00030\u008f\u0001H\u0007J\u0018\u0010»\u0001\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010¼\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0007J\u001d\u0010½\u0001\u001a\u00030¬\u00012\u0007\u0010ª\u0001\u001a\u00020\u00042\b\u0010\u0088\u0001\u001a\u00030\u0089\u0001H\u0007J%\u0010¾\u0001\u001a\u00030¬\u00012\u000f\u0010¿\u0001\u001a\n\u0012\u0004\u0012\u00020y\u0018\u00010x2\b\u0010\u0088\u0001\u001a\u00030\u0089\u0001H\u0002J\u0012\u0010À\u0001\u001a\u00020A2\u0007\u0010Á\u0001\u001a\u00020AH\u0007J\t\u0010Â\u0001\u001a\u00020AH\u0007J\u0016\u0010Ã\u0001\u001a\u0005\u0018\u00010\u008b\u00012\b\u0010¶\u0001\u001a\u00030\u008f\u0001H\u0007J\u0013\u0010Ä\u0001\u001a\u00020A2\b\u0010¶\u0001\u001a\u00030\u008f\u0001H\u0007J\u0016\u0010Å\u0001\u001a\u0005\u0018\u00010\u008b\u00012\b\u0010º\u0001\u001a\u00030\u008f\u0001H\u0007J\u0014\u0010Æ\u0001\u001a\u00030\u0097\u00012\b\u0010º\u0001\u001a\u00030\u008f\u0001H\u0007J\u0013\u0010Ç\u0001\u001a\u00030\u0097\u00012\u0007\u0010È\u0001\u001a\u00020AH\u0007J?\u0010É\u0001\u001a\u00030Ê\u00012\b\u0010¶\u0001\u001a\u00030\u008f\u00012\t\u0010©\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010ª\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010È\u0001\u001a\u00020A2\n\u0010Ë\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0007J\n\u0010Ì\u0001\u001a\u00030Ê\u0001H\u0007J-\u0010Í\u0001\u001a\u0005\u0018\u00010\u008f\u00012\b\u0010\u0090\u0001\u001a\u00030\u0091\u00012\n\u0010¶\u0001\u001a\u0005\u0018\u00010\u008f\u00012\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010yH\u0007J-\u0010Î\u0001\u001a\u0005\u0018\u00010\u008f\u00012\b\u0010\u0090\u0001\u001a\u00030\u0091\u00012\n\u0010¶\u0001\u001a\u0005\u0018\u00010\u008f\u00012\t\u0010\u0083\u0001\u001a\u0004\u0018\u00010yH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00103\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00105\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00108\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010:\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010=\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010>\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0016\u0010?\u001a\b\u0012\u0004\u0012\u00020A0@X\u0082\u0004¢\u0006\u0004\n\u0002\u0010BR\u000e\u0010C\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010D\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010E\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010F\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010G\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010H\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010I\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010J\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010K\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010L\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010M\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010N\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010O\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010P\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010Q\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010R\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010S\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010T\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010U\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010V\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010W\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010X\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010Y\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010Z\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010[\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010\\\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010]\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010^\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010_\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010`\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010a\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010b\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010c\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010d\u001a\u00020AX\u0086T¢\u0006\u0002\n��R\u000e\u0010e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010g\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010h\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010i\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010j\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010k\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010l\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010m\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010o\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010p\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010q\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010s\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010u\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R \u0010v\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020y0x0wX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010z\u001a\b\u0012\u0004\u0012\u00020y0xX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010{\u001a\b\u0012\u0004\u0012\u00020y0xX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010|\u001a\u00020}X\u0082\u0004¢\u0006\u0002\n��¨\u0006Ö\u0001"}, d2 = {"Lcom/facebook/internal/NativeProtocol;", "", "()V", "ACTION_APPINVITE_DIALOG", "", "ACTION_CAMERA_EFFECT", "ACTION_FEED_DIALOG", "ACTION_LIKE_DIALOG", "ACTION_MESSAGE_DIALOG", "ACTION_OGACTIONPUBLISH_DIALOG", "ACTION_OGMESSAGEPUBLISH_DIALOG", "ACTION_SHARE_STORY", "AUDIENCE_EVERYONE", "AUDIENCE_FRIENDS", "AUDIENCE_ME", "BRIDGE_ARG_ACTION_ID_STRING", "BRIDGE_ARG_APP_NAME_STRING", "BRIDGE_ARG_ERROR_BUNDLE", "BRIDGE_ARG_ERROR_CODE", "BRIDGE_ARG_ERROR_DESCRIPTION", "BRIDGE_ARG_ERROR_JSON", "BRIDGE_ARG_ERROR_SUBCODE", "BRIDGE_ARG_ERROR_TYPE", "CONTENT_SCHEME", "ERROR_APPLICATION_ERROR", "ERROR_NETWORK_ERROR", "ERROR_PERMISSION_DENIED", "ERROR_PROTOCOL_ERROR", "ERROR_SERVICE_DISABLED", "ERROR_UNKNOWN_ERROR", "ERROR_USER_CANCELED", "EXTRA_ACCESS_TOKEN", "EXTRA_APPLICATION_ID", "EXTRA_APPLICATION_NAME", "EXTRA_AUTHENTICATION_TOKEN", "EXTRA_DATA_ACCESS_EXPIRATION_TIME", "EXTRA_DIALOG_COMPLETE_KEY", "EXTRA_DIALOG_COMPLETION_GESTURE_KEY", "EXTRA_EXPIRES_SECONDS_SINCE_EPOCH", "EXTRA_GET_INSTALL_DATA_PACKAGE", "EXTRA_GRAPH_API_VERSION", "EXTRA_LOGGER_REF", "EXTRA_NONCE", "EXTRA_PERMISSIONS", "EXTRA_PROTOCOL_ACTION", "EXTRA_PROTOCOL_BRIDGE_ARGS", "EXTRA_PROTOCOL_CALL_ID", "EXTRA_PROTOCOL_METHOD_ARGS", "EXTRA_PROTOCOL_METHOD_RESULTS", "EXTRA_PROTOCOL_VERSION", "EXTRA_PROTOCOL_VERSIONS", "EXTRA_TOAST_DURATION_MS", "EXTRA_USER_ID", "FACEBOOK_PROXY_AUTH_ACTIVITY", "FACEBOOK_PROXY_AUTH_APP_ID_KEY", "FACEBOOK_PROXY_AUTH_E2E_KEY", "FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY", "FACEBOOK_SDK_VERSION_KEY", "FACEBOOK_TOKEN_REFRESH_ACTIVITY", "IMAGE_URL_KEY", "IMAGE_USER_GENERATED_KEY", "INTENT_ACTION_PLATFORM_ACTIVITY", "INTENT_ACTION_PLATFORM_SERVICE", "KNOWN_PROTOCOL_VERSIONS", "", "", "[Ljava/lang/Integer;", "MESSAGE_GET_ACCESS_TOKEN_REPLY", "MESSAGE_GET_ACCESS_TOKEN_REQUEST", "MESSAGE_GET_AK_SEAMLESS_TOKEN_REPLY", "MESSAGE_GET_AK_SEAMLESS_TOKEN_REQUEST", "MESSAGE_GET_INSTALL_DATA_REPLY", "MESSAGE_GET_INSTALL_DATA_REQUEST", "MESSAGE_GET_LIKE_STATUS_REPLY", "MESSAGE_GET_LIKE_STATUS_REQUEST", "MESSAGE_GET_LOGIN_STATUS_REPLY", "MESSAGE_GET_LOGIN_STATUS_REQUEST", "MESSAGE_GET_PROTOCOL_VERSIONS_REPLY", "MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST", "NO_PROTOCOL_AVAILABLE", "OPEN_GRAPH_CREATE_OBJECT_KEY", "PLATFORM_PROVIDER", "PLATFORM_PROVIDER_VERSIONS", "PLATFORM_PROVIDER_VERSION_COLUMN", "PROTOCOL_VERSION_20121101", "PROTOCOL_VERSION_20130502", "PROTOCOL_VERSION_20130618", "PROTOCOL_VERSION_20131107", "PROTOCOL_VERSION_20140204", "PROTOCOL_VERSION_20140324", "PROTOCOL_VERSION_20140701", "PROTOCOL_VERSION_20141001", "PROTOCOL_VERSION_20141028", "PROTOCOL_VERSION_20141107", "PROTOCOL_VERSION_20141218", "PROTOCOL_VERSION_20160327", "PROTOCOL_VERSION_20170213", "PROTOCOL_VERSION_20170411", "PROTOCOL_VERSION_20170417", "PROTOCOL_VERSION_20171115", "PROTOCOL_VERSION_20210906", "RESULT_ARGS_ACCESS_TOKEN", "RESULT_ARGS_DIALOG_COMPLETE_KEY", "RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY", "RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH", "RESULT_ARGS_GRAPH_DOMAIN", "RESULT_ARGS_PERMISSIONS", "RESULT_ARGS_SIGNED_REQUEST", "STATUS_ERROR_CODE", "STATUS_ERROR_DESCRIPTION", "STATUS_ERROR_JSON", "STATUS_ERROR_SUBCODE", "STATUS_ERROR_TYPE", "TAG", "WEB_DIALOG_ACTION", "WEB_DIALOG_IS_FALLBACK", "WEB_DIALOG_PARAMS", "WEB_DIALOG_URL", "actionToAppInfoMap", "", "", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "effectCameraAppInfoList", "facebookAppInfoList", "protocolVersionsAsyncUpdating", "Ljava/util/concurrent/atomic/AtomicBoolean;", "buildActionToAppInfoMap", "buildEffectCameraAppInfoList", "buildFacebookAppList", "buildPlatformProviderVersionURI", "Landroid/net/Uri;", "appInfo", "computeLatestAvailableVersionFromVersionSpec", "allAvailableFacebookAppVersions", "Ljava/util/TreeSet;", "latestSdkVersion", "versionSpec", "", "createBundleForException", "Landroid/os/Bundle;", "e", "Lcom/facebook/FacebookException;", "createInstagramIntent", "Landroid/content/Intent;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "applicationId", "permissions", "", "e2e", "isRerequest", "", "isForPublish", "defaultAudience", "Lcom/facebook/login/DefaultAudience;", "clientState", "authType", "messengerPageId", "resetMessengerState", "isFamilyLogin", "shouldSkipAccountDedupe", "createNativeAppIntent", "ignoreAppSwitchToLoggedOut", "targetApp", "Lcom/facebook/login/LoginTargetApp;", "nonce", "codeChallenge", "codeChallengeMethod", "createPlatformActivityIntent", FailedBinderCallBack.CALLER_ID, "action", "versionResult", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "extras", "createPlatformServiceIntent", "createProtocolResultIntent", "requestIntent", "results", "error", "createProxyAuthIntents", "fetchAllAvailableProtocolVersionsForAppInfo", "getBridgeArgumentsFromIntent", "intent", "getCallIdFromIntent", "Ljava/util/UUID;", "getErrorDataFromResultIntent", "resultIntent", "getExceptionFromErrorData", "errorData", "getLatestAvailableProtocolVersionForAction", "getLatestAvailableProtocolVersionForAppInfoList", "appInfoList", "getLatestAvailableProtocolVersionForService", "minimumVersion", "getLatestKnownVersion", "getMethodArgumentsFromIntent", "getProtocolVersionFromIntent", "getSuccessResultsFromIntent", "isErrorResult", "isVersionCompatibleWithBucketedIntent", "version", "setupProtocolRequestIntent", "", "params", "updateAllAvailableProtocolVersionsAsync", "validateActivityIntent", "validateServiceIntent", "EffectTestAppInfo", "InstagramAppInfo", "KatanaAppInfo", "MessengerAppInfo", "NativeAppInfo", "ProtocolVersionQueryResult", "WakizashiAppInfo", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.l0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/l0.class */
public final class C1146l0 {

    /* renamed from: a */
    public static final C1146l0 f3146a;

    /* renamed from: b */
    public static final String f3147b;

    /* renamed from: c */
    public static final List<AbstractC1151e> f3148c;

    /* renamed from: d */
    public static final List<AbstractC1151e> f3149d;

    /* renamed from: e */
    public static final AtomicBoolean f3150e;

    /* renamed from: f */
    public static final Integer[] f3151f;

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.l0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/l0$a.class */
    public static final class C1147a extends AbstractC1151e {
        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: b */
        public /* bridge */ /* synthetic */ String mo41711b() {
            return null;
        }

        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: c */
        public String mo41710c() {
            return "com.facebook.arstudio.player";
        }
    }

    @Metadata(d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$InstagramAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "getResponseType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.l0$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/l0$b.class */
    public static final class C1148b extends AbstractC1151e {
        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: b */
        public String mo41711b() {
            return "com.instagram.platform.AppAuthorizeActivity";
        }

        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: c */
        public String mo41710c() {
            return "com.instagram.android";
        }

        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: d */
        public String mo41713d() {
            return "token,signed_request,graph_domain,granted_scopes";
        }
    }

    @Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "isAndroidAPIVersionNotLessThan30", "", "onAvailableVersionsNullOrEmpty", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.l0$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/l0$c.class */
    public static final class C1149c extends AbstractC1151e {
        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: b */
        public String mo41711b() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: c */
        public String mo41710c() {
            return SupportMessenger.FACEBOOK;
        }

        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: e */
        public void mo41712e() {
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (!(C23228f0.m7354a().getApplicationInfo().targetSdkVersion >= 30) || C1220a.m41623b(C1146l0.class)) {
                return;
            }
            try {
                String str = C1146l0.f3147b;
            } catch (Throwable th) {
                C1220a.m41624a(th, C1146l0.class);
            }
        }
    }

    @Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.l0$d */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/l0$d.class */
    public static final class C1150d extends AbstractC1151e {
        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: b */
        public /* bridge */ /* synthetic */ String mo41711b() {
            return null;
        }

        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: c */
        public String mo41710c() {
            return SupportMessenger.FB_MESSENGER;
        }
    }

    @Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\n\u0010\u000b\u001a\u0004\u0018\u00010\fH&J\b\u0010\r\u001a\u00020\fH&J\b\u0010\u000e\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u0007H\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "()V", "availableVersions", "Ljava/util/TreeSet;", "", "fetchAvailableVersions", "", "force", "", "getAvailableVersions", "getLoginActivity", "", "getPackage", "getResponseType", "onAvailableVersionsNullOrEmpty", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.l0$e */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/l0$e.class */
    public static abstract class AbstractC1151e {

        /* renamed from: a */
        public TreeSet<Integer> f3152a;

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
            if (s1.z.c.l.a(r0 == null ? null : java.lang.Boolean.valueOf(r0.isEmpty()), java.lang.Boolean.FALSE) == false) goto L15;
         */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0079 A[Catch: all -> 0x0080, TRY_ENTER, TryCatch #2 {, blocks: (B:6:0x0008, B:11:0x001a, B:13:0x0023, B:15:0x002c, B:16:0x002f, B:20:0x0051, B:22:0x0057, B:24:0x005f, B:31:0x0079, B:19:0x003f), top: B:39:0x0008 }] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m41714a(boolean r4) {
            /*
                r3 = this;
                r0 = r3
                monitor-enter(r0)
                r0 = 0
                r5 = r0
                r0 = r4
                if (r0 != 0) goto L2c
                r0 = r3
                java.util.TreeSet<java.lang.Integer> r0 = r0.f3152a     // Catch: java.lang.Throwable -> L80
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L2c
                r0 = r6
                if (r0 != 0) goto L1a
                r0 = 0
                r6 = r0
                goto L22
            L1a:
                r0 = r6
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L80
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> L80
                r6 = r0
            L22:
                r0 = r6
                java.lang.Boolean r1 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L80
                boolean r0 = s1.z.c.l.a(r0, r1)     // Catch: java.lang.Throwable -> L80
                if (r0 != 0) goto L56
            L2c:
                com.facebook.internal.l0 r0 = com.facebook.internal.C1146l0.f3146a     // Catch: java.lang.Throwable -> L80 java.lang.Throwable -> L80
                r6 = r0
                java.lang.Class<com.facebook.internal.l0> r0 = com.facebook.internal.C1146l0.class
                boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)     // Catch: java.lang.Throwable -> L80
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L3f
                r0 = r5
                r6 = r0
                goto L51
            L3f:
                r0 = r6
                r1 = r3
                java.util.TreeSet r0 = r0.m41721f(r1)     // Catch: java.lang.Throwable -> L48
                r6 = r0
                goto L51
            L48:
                r6 = move-exception
                r0 = r6
                java.lang.Class<com.facebook.internal.l0> r1 = com.facebook.internal.C1146l0.class
                com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)     // Catch: java.lang.Throwable -> L80
                r0 = r5
                r6 = r0
            L51:
                r0 = r3
                r1 = r6
                r0.f3152a = r1     // Catch: java.lang.Throwable -> L80
            L56:
                r0 = r3
                java.util.TreeSet<java.lang.Integer> r0 = r0.f3152a     // Catch: java.lang.Throwable -> L80
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L71
                r0 = r6
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L80
                if (r0 == 0) goto L6b
                goto L71
            L6b:
                r0 = 0
                r7 = r0
                goto L74
            L71:
                r0 = 1
                r7 = r0
            L74:
                r0 = r7
                if (r0 == 0) goto L7d
                r0 = r3
                r0.mo41712e()     // Catch: java.lang.Throwable -> L80
            L7d:
                r0 = r3
                monitor-exit(r0)
                return
            L80:
                r6 = move-exception
                r0 = r3
                monitor-exit(r0)
                r0 = r6
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1146l0.AbstractC1151e.m41714a(boolean):void");
        }

        /* renamed from: b */
        public abstract String mo41711b();

        /* renamed from: c */
        public abstract String mo41710c();

        /* renamed from: d */
        public String mo41713d() {
            return "id_token,token,signed_request,graph_domain";
        }

        /* renamed from: e */
        public void mo41712e() {
        }
    }

    @Metadata(d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\u0018�� \f2\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "", "()V", "<set-?>", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "appInfo", "getAppInfo", "()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "protocolVersion", "getProtocolVersion", "()I", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.l0$f */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/l0$f.class */
    public static final class C1152f {

        /* renamed from: a */
        public int f3153a;

        public C1152f(f fVar) {
        }
    }

    @Metadata(d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.l0$g */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/l0$g.class */
    public static final class C1153g extends AbstractC1151e {
        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: b */
        public String mo41711b() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.C1146l0.AbstractC1151e
        /* renamed from: c */
        public String mo41710c() {
            return "com.facebook.wakizashi";
        }
    }

    static {
        C1146l0 c1146l0 = new C1146l0();
        f3146a = c1146l0;
        String name = C1146l0.class.getName();
        l.d(name, "NativeProtocol::class.java.name");
        f3147b = name;
        f3148c = c1146l0.m41726a();
        Objects.requireNonNull(c1146l0);
        ArrayList arrayList = null;
        if (!C1220a.m41623b(c1146l0)) {
            try {
                ArrayList e = i.e(new AbstractC1151e[]{new C1147a()});
                e.addAll(c1146l0.m41726a());
                arrayList = e;
            } catch (Throwable th) {
                C1220a.m41624a(th, c1146l0);
            }
        }
        f3149d = arrayList;
        C1146l0 c1146l02 = f3146a;
        Objects.requireNonNull(c1146l02);
        if (!C1220a.m41623b(c1146l02)) {
            try {
                HashMap hashMap = new HashMap();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new C1150d());
                List<AbstractC1151e> list = f3148c;
                hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", list);
                hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", list);
                hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", list);
                hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", list);
                hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList2);
                hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList2);
                hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", arrayList);
                hashMap.put("com.facebook.platform.action.request.SHARE_STORY", list);
            } catch (Throwable th2) {
                C1220a.m41624a(th2, c1146l02);
            }
        }
        f3150e = new AtomicBoolean(false);
        f3151f = new Integer[]{20210906, 20170417, 20160327, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101};
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0087, code lost:
        r10 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008d, code lost:
        if ((r12 % 2) != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        r10 = java.lang.Math.min(r0, r4);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int m41725b(java.util.TreeSet<java.lang.Integer> r3, int r4, int[] r5) {
        /*
            java.lang.Class<com.facebook.internal.l0> r0 = com.facebook.internal.C1146l0.class
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
            if (r0 == 0) goto La
            r0 = 0
            return r0
        La:
            r0 = r5
            java.lang.String r1 = "versionSpec"
            s1.z.c.l.e(r0, r1)     // Catch: java.lang.Throwable -> L9b
            r0 = -1
            r6 = r0
            r0 = r3
            if (r0 != 0) goto L19
            r0 = -1
            return r0
        L19:
            r0 = r5
            int r0 = r0.length     // Catch: java.lang.Throwable -> L9b
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            r0 = r3
            java.util.Iterator r0 = r0.descendingIterator()     // Catch: java.lang.Throwable -> L9b
            r8 = r0
            r0 = -1
            r9 = r0
        L28:
            r0 = r6
            r10 = r0
            r0 = r8
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> L9b
            if (r0 == 0) goto L98
            r0 = r8
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L9b
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L9b
            r3 = r0
            r0 = r3
            java.lang.String r1 = "fbAppVersion"
            s1.z.c.l.d(r0, r1)     // Catch: java.lang.Throwable -> L9b
            r0 = r9
            r1 = r3
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L9b
            int r0 = java.lang.Math.max(r0, r1)     // Catch: java.lang.Throwable -> L9b
            r11 = r0
            r0 = r7
            r12 = r0
        L56:
            r0 = r12
            if (r0 < 0) goto L6c
            r0 = r5
            r1 = r12
            r0 = r0[r1]     // Catch: java.lang.Throwable -> L9b
            r1 = r3
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L9b
            if (r0 <= r1) goto L6c
            int r12 = r12 + (-1)
            goto L56
        L6c:
            r0 = r12
            if (r0 >= 0) goto L73
            r0 = -1
            return r0
        L73:
            r0 = r12
            r7 = r0
            r0 = r11
            r9 = r0
            r0 = r5
            r1 = r12
            r0 = r0[r1]     // Catch: java.lang.Throwable -> L9b
            r1 = r3
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L9b
            if (r0 != r1) goto L28
            r0 = r6
            r10 = r0
            r0 = r12
            r1 = 2
            int r0 = r0 % r1
            if (r0 != 0) goto L98
            r0 = r11
            r1 = r4
            int r0 = java.lang.Math.min(r0, r1)     // Catch: java.lang.Throwable -> L9b
            r10 = r0
        L98:
            r0 = r10
            return r0
        L9b:
            r3 = move-exception
            r0 = r3
            java.lang.Class<com.facebook.internal.l0> r1 = com.facebook.internal.C1146l0.class
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1146l0.m41725b(java.util.TreeSet, int, int[]):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0094, code lost:
        if (com.facebook.internal.C1234y.m41611a(r4, r0) == false) goto L17;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.content.Intent m41723d(android.content.Context r4) {
        /*
            java.lang.Class<com.facebook.internal.l0> r0 = com.facebook.internal.C1146l0.class
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
            if (r0 == 0) goto La
            r0 = 0
            return r0
        La:
            r0 = r4
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)     // Catch: java.lang.Throwable -> Lae
            java.util.List<com.facebook.internal.l0$e> r0 = com.facebook.internal.C1146l0.f3148c     // Catch: java.lang.Throwable -> Lae
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lae
            r5 = r0
        L1a:
            r0 = r5
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> Lae
            if (r0 == 0) goto Lac
            r0 = r5
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Lae
            com.facebook.internal.l0$e r0 = (com.facebook.internal.C1146l0.AbstractC1151e) r0     // Catch: java.lang.Throwable -> Lae
            r6 = r0
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Throwable -> Lae
            r7 = r0
            r0 = r7
            java.lang.String r1 = "com.facebook.platform.PLATFORM_SERVICE"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lae
            r0 = r7
            r1 = r6
            java.lang.String r1 = r1.mo41710c()     // Catch: java.lang.Throwable -> Lae
            android.content.Intent r0 = r0.setPackage(r1)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r1 = "android.intent.category.DEFAULT"
            android.content.Intent r0 = r0.addCategory(r1)     // Catch: java.lang.Throwable -> Lae
            r6 = r0
            java.lang.Class<com.facebook.internal.l0> r0 = com.facebook.internal.C1146l0.class
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)     // Catch: java.lang.Throwable -> Lae
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L56
            goto L97
        L56:
            r0 = r4
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)     // Catch: java.lang.Throwable -> L9c
            r0 = r6
            if (r0 != 0) goto L64
            goto L97
        L64:
            r0 = r4
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L9c
            r1 = r6
            r2 = 0
            android.content.pm.ResolveInfo r0 = r0.resolveService(r1, r2)     // Catch: java.lang.Throwable -> L9c
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L77
            goto L97
        L77:
            com.facebook.internal.y r0 = com.facebook.internal.C1234y.f3326a     // Catch: java.lang.Throwable -> L9c
            r7 = r0
            r0 = r9
            android.content.pm.ServiceInfo r0 = r0.serviceInfo     // Catch: java.lang.Throwable -> L9c
            java.lang.String r0 = r0.packageName     // Catch: java.lang.Throwable -> L9c
            r7 = r0
            r0 = r7
            java.lang.String r1 = "resolveInfo.serviceInfo.packageName"
            s1.z.c.l.d(r0, r1)     // Catch: java.lang.Throwable -> L9c
            r0 = r4
            r1 = r7
            boolean r0 = com.facebook.internal.C1234y.m41611a(r0, r1)     // Catch: java.lang.Throwable -> L9c
            r8 = r0
            r0 = r8
            if (r0 != 0) goto La6
        L97:
            r0 = 0
            r6 = r0
            goto La6
        L9c:
            r6 = move-exception
            r0 = r6
            java.lang.Class<com.facebook.internal.l0> r1 = com.facebook.internal.C1146l0.class
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)     // Catch: java.lang.Throwable -> Lae
            goto L97
        La6:
            r0 = r6
            if (r0 == 0) goto L1a
            r0 = r6
            return r0
        Lac:
            r0 = 0
            return r0
        Lae:
            r4 = move-exception
            r0 = r4
            java.lang.Class<com.facebook.internal.l0> r1 = com.facebook.internal.C1146l0.class
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1146l0.m41723d(android.content.Context):android.content.Intent");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0072 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074 A[Catch: all -> 0x0112, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0112, blocks: (B:5:0x000a, B:22:0x0074, B:24:0x00a6, B:34:0x00ed, B:36:0x00f8, B:38:0x0105, B:7:0x001e, B:9:0x0028, B:11:0x0036, B:13:0x0049, B:16:0x0057, B:26:0x00b3, B:28:0x00cc, B:30:0x00d3), top: B:47:0x000a }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.content.Intent m41722e(android.content.Intent r4, android.os.Bundle r5, p193e.p1538j.C23222c0 r6) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1146l0.m41722e(android.content.Intent, android.os.Bundle, e.j.c0):android.content.Intent");
    }

    /* renamed from: h */
    public static final int m41719h() {
        if (C1220a.m41623b(C1146l0.class)) {
            return 0;
        }
        try {
            return f3151f[0].intValue();
        } catch (Throwable th) {
            C1220a.m41624a(th, C1146l0.class);
            return 0;
        }
    }

    /* renamed from: i */
    public static final Bundle m41718i(Intent intent) {
        if (C1220a.m41623b(C1146l0.class)) {
            return null;
        }
        try {
            l.e(intent, "intent");
            return !m41716k(m41717j(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
        } catch (Throwable th) {
            C1220a.m41624a(th, C1146l0.class);
            return null;
        }
    }

    /* renamed from: j */
    public static final int m41717j(Intent intent) {
        if (C1220a.m41623b(C1146l0.class)) {
            return 0;
        }
        try {
            l.e(intent, "intent");
            return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        } catch (Throwable th) {
            C1220a.m41624a(th, C1146l0.class);
            return 0;
        }
    }

    /* renamed from: k */
    public static final boolean m41716k(int i) {
        if (C1220a.m41623b(C1146l0.class)) {
            return false;
        }
        try {
            boolean z = false;
            if (C25225a.m3976Q(f3151f, Integer.valueOf(i))) {
                z = false;
                if (i >= 20140701) {
                    z = true;
                }
            }
            return z;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1146l0.class);
            return false;
        }
    }

    /* renamed from: l */
    public static final void m41715l() {
        if (C1220a.m41623b(C1146l0.class)) {
            return;
        }
        try {
            if (!f3150e.compareAndSet(false, true)) {
                return;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            C23228f0.m7350e().execute(RunnableC1140j.f3134a);
        } catch (Throwable th) {
            C1220a.m41624a(th, C1146l0.class);
        }
    }

    /* renamed from: a */
    public final List<AbstractC1151e> m41726a() {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            return i.e(new AbstractC1151e[]{new C1149c(), new C1153g()});
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006d A[Catch: all -> 0x0124, TRY_ENTER, TryCatch #0 {all -> 0x0124, blocks: (B:5:0x0009, B:8:0x0016, B:10:0x0045, B:12:0x0053, B:19:0x006d, B:21:0x007e, B:23:0x0084, B:25:0x008f, B:27:0x00be, B:29:0x00cc, B:31:0x00e5, B:33:0x00ef, B:35:0x0107, B:38:0x0119), top: B:44:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0084 A[Catch: all -> 0x0124, TryCatch #0 {all -> 0x0124, blocks: (B:5:0x0009, B:8:0x0016, B:10:0x0045, B:12:0x0053, B:19:0x006d, B:21:0x007e, B:23:0x0084, B:25:0x008f, B:27:0x00be, B:29:0x00cc, B:31:0x00e5, B:33:0x00ef, B:35:0x0107, B:38:0x0119), top: B:44:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00be A[Catch: all -> 0x0124, TRY_ENTER, TryCatch #0 {all -> 0x0124, blocks: (B:5:0x0009, B:8:0x0016, B:10:0x0045, B:12:0x0053, B:19:0x006d, B:21:0x007e, B:23:0x0084, B:25:0x008f, B:27:0x00be, B:29:0x00cc, B:31:0x00e5, B:33:0x00ef, B:35:0x0107, B:38:0x0119), top: B:44:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e5 A[Catch: all -> 0x0124, TRY_ENTER, TryCatch #0 {all -> 0x0124, blocks: (B:5:0x0009, B:8:0x0016, B:10:0x0045, B:12:0x0053, B:19:0x006d, B:21:0x007e, B:23:0x0084, B:25:0x008f, B:27:0x00be, B:29:0x00cc, B:31:0x00e5, B:33:0x00ef, B:35:0x0107, B:38:0x0119), top: B:44:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0107 A[Catch: all -> 0x0124, TRY_ENTER, TryCatch #0 {all -> 0x0124, blocks: (B:5:0x0009, B:8:0x0016, B:10:0x0045, B:12:0x0053, B:19:0x006d, B:21:0x007e, B:23:0x0084, B:25:0x008f, B:27:0x00be, B:29:0x00cc, B:31:0x00e5, B:33:0x00ef, B:35:0x0107, B:38:0x0119), top: B:44:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0119 A[Catch: all -> 0x0124, TRY_ENTER, TryCatch #0 {all -> 0x0124, blocks: (B:5:0x0009, B:8:0x0016, B:10:0x0045, B:12:0x0053, B:19:0x006d, B:21:0x007e, B:23:0x0084, B:25:0x008f, B:27:0x00be, B:29:0x00cc, B:31:0x00e5, B:33:0x00ef, B:35:0x0107, B:38:0x0119), top: B:44:0x0009 }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.Intent m41724c(com.facebook.internal.C1146l0.AbstractC1151e r6, java.lang.String r7, java.util.Collection r8, java.lang.String r9, boolean r10, com.facebook.login.EnumC1271j r11, java.lang.String r12, java.lang.String r13, boolean r14, java.lang.String r15, boolean r16, com.facebook.login.EnumC1290x r17, boolean r18, boolean r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1146l0.m41724c(com.facebook.internal.l0$e, java.lang.String, java.util.Collection, java.lang.String, boolean, com.facebook.login.j, java.lang.String, java.lang.String, boolean, java.lang.String, boolean, com.facebook.login.x, boolean, boolean, java.lang.String):android.content.Intent");
    }

    /* renamed from: f */
    public final TreeSet<Integer> m41721f(AbstractC1151e abstractC1151e) {
        Uri uri;
        Throwable th;
        Cursor cursor;
        ProviderInfo providerInfo;
        Cursor cursor2;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            TreeSet<Integer> treeSet = new TreeSet<>();
            C23228f0 c23228f0 = C23228f0.f64291a;
            ContentResolver contentResolver = C23228f0.m7354a().getContentResolver();
            if (C1220a.m41623b(this)) {
                uri = null;
            } else {
                uri = Uri.parse("content://" + abstractC1151e.mo41710c() + ".provider.PlatformProvider/versions");
                l.d(uri, "parse(CONTENT_SCHEME + appInfo.getPackage() + PLATFORM_PROVIDER_VERSIONS)");
            }
            try {
                C23228f0 c23228f02 = C23228f0.f64291a;
                try {
                    providerInfo = C23228f0.m7354a().getPackageManager().resolveContentProvider(l.j(abstractC1151e.mo41710c(), ".provider.PlatformProvider"), 0);
                } catch (RuntimeException e) {
                    providerInfo = null;
                }
                if (providerInfo != null) {
                    try {
                        cursor = contentResolver.query(uri, new String[]{"version"}, null, null, null);
                    } catch (IllegalArgumentException | NullPointerException | SecurityException e2) {
                        cursor = null;
                    }
                    cursor2 = cursor;
                    if (cursor != null) {
                        while (true) {
                            cursor2 = cursor;
                            try {
                                if (!cursor.moveToNext()) {
                                    break;
                                }
                                treeSet.add(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("version"))));
                            } catch (Throwable th2) {
                                th = th2;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        }
                    }
                } else {
                    cursor2 = null;
                }
                if (cursor2 != null) {
                    cursor2.close();
                }
                return treeSet;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        } catch (Throwable th4) {
            C1220a.m41624a(th4, this);
            return null;
        }
    }

    /* renamed from: g */
    public final C1152f m41720g(List<? extends AbstractC1151e> list, int[] iArr) {
        int m41725b;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            m41715l();
            if (list == null) {
                C1152f c1152f = new C1152f(null);
                c1152f.f3153a = -1;
                return c1152f;
            }
            Iterator<? extends AbstractC1151e> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    C1152f c1152f2 = new C1152f(null);
                    c1152f2.f3153a = -1;
                    return c1152f2;
                }
                AbstractC1151e next = it.next();
                TreeSet<Integer> treeSet = next.f3152a;
                if (treeSet == null || !l.a(Boolean.valueOf(treeSet.isEmpty()), Boolean.FALSE)) {
                    next.m41714a(false);
                }
                m41725b = m41725b(next.f3152a, m41719h(), iArr);
            } while (m41725b == -1);
            C1152f c1152f3 = new C1152f(null);
            c1152f3.f3153a = m41725b;
            return c1152f3;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}

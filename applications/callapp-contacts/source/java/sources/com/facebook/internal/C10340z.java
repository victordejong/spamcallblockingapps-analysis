package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.C10181g;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.login.EnumC10380b;
import com.mopub.common.Constants;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b9\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b4\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\b\f\bÇ\u0002\u0018��2\u00020\u0001:\u000eÇ\u0001È\u0001É\u0001Ê\u0001Ë\u0001Ì\u0001Í\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u007f\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020v0u0tH\u0002J\u000f\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020v0uH\u0002J\u000f\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020v0uH\u0002J\u0013\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0084\u0001\u001a\u00020vH\u0002J.\u0010\u0085\u0001\u001a\u00020?2\u0010\u0010\u0086\u0001\u001a\u000b\u0012\u0004\u0012\u00020?\u0018\u00010\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020?2\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0007J\u0018\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u00012\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0007Jj\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\b\u0010\u0097\u0001\u001a\u00030\u0098\u00012\b\u0010\u0099\u0001\u001a\u00030\u0098\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u0004H\u0007Ji\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0007\u0010\u0084\u0001\u001a\u00020v2\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\b\u0010\u0099\u0001\u001a\u00030\u0098\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u00042\b\u0010\u009f\u0001\u001a\u00030\u0098\u0001H\u0002JD\u0010 \u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010£\u0001\u001a\u0005\u0018\u00010¤\u00012\n\u0010¥\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\u0016\u0010¦\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0007J.\u0010§\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010¨\u0001\u001a\u00030\u0090\u00012\n\u0010©\u0001\u001a\u0005\u0018\u00010\u008c\u00012\n\u0010ª\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0007Jz\u0010«\u0001\u001a\t\u0012\u0005\u0012\u00030\u0090\u00010u2\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\b\u0010\u0097\u0001\u001a\u00030\u0098\u00012\b\u0010\u0099\u0001\u001a\u00030\u0098\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u00042\b\u0010\u009f\u0001\u001a\u00030\u0098\u0001H\u0007J\u0016\u0010¬\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0007J\u0019\u0010\u00ad\u0001\u001a\t\u0012\u0004\u0012\u00020?0\u0087\u00012\u0007\u0010\u0084\u0001\u001a\u00020vH\u0002J\u0016\u0010®\u0001\u001a\u0005\u0018\u00010\u008c\u00012\b\u0010¯\u0001\u001a\u00030\u0090\u0001H\u0007J\u0018\u0010°\u0001\u001a\u0005\u0018\u00010±\u00012\n\u0010¯\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0007J\u0016\u0010²\u0001\u001a\u0005\u0018\u00010\u008c\u00012\b\u0010³\u0001\u001a\u00030\u0090\u0001H\u0007J\u0018\u0010´\u0001\u001a\u0005\u0018\u00010\u008e\u00012\n\u0010µ\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\u001d\u0010¶\u0001\u001a\u00030¤\u00012\u0007\u0010¢\u0001\u001a\u00020\u00042\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0007J%\u0010·\u0001\u001a\u00030¤\u00012\u000f\u0010¸\u0001\u001a\n\u0012\u0004\u0012\u00020v\u0018\u00010u2\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0002J\u0012\u0010¹\u0001\u001a\u00020?2\u0007\u0010º\u0001\u001a\u00020?H\u0007J\u0016\u0010»\u0001\u001a\u0005\u0018\u00010\u008c\u00012\b\u0010¯\u0001\u001a\u00030\u0090\u0001H\u0007J\u0013\u0010¼\u0001\u001a\u00020?2\b\u0010¯\u0001\u001a\u00030\u0090\u0001H\u0007J\u0016\u0010½\u0001\u001a\u0005\u0018\u00010\u008c\u00012\b\u0010³\u0001\u001a\u00030\u0090\u0001H\u0007J\u0014\u0010¾\u0001\u001a\u00030\u0098\u00012\b\u0010³\u0001\u001a\u00030\u0090\u0001H\u0007J\u0013\u0010¿\u0001\u001a\u00030\u0098\u00012\u0007\u0010À\u0001\u001a\u00020?H\u0007J?\u0010Á\u0001\u001a\u00030Â\u00012\b\u0010¯\u0001\u001a\u00030\u0090\u00012\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010À\u0001\u001a\u00020?2\n\u0010Ã\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\n\u0010Ä\u0001\u001a\u00030Â\u0001H\u0007J-\u0010Å\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\n\u0010¯\u0001\u001a\u0005\u0018\u00010\u0090\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010vH\u0007J-\u0010Æ\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\n\u0010¯\u0001\u001a\u0005\u0018\u00010\u0090\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010vH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00103\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00108\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0016\u0010=\u001a\b\u0012\u0004\u0012\u00020?0>X\u0082\u0004¢\u0006\u0004\n\u0002\u0010@R\u000e\u0010A\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010B\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010C\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010D\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010E\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010F\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010G\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010H\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010I\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010J\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010K\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010L\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010M\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010N\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010O\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010P\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010Q\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010R\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010S\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010T\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010U\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010V\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010W\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010X\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010Y\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010Z\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010[\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010\\\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010]\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010^\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010_\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010`\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010a\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010g\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010h\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010i\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010j\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010k\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010l\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010m\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010n\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010o\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010p\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010q\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R \u0010s\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020v0u0tX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010w\u001a\b\u0012\u0004\u0012\u00020v0uX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010x\u001a\b\u0012\u0004\u0012\u00020v0uX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010y\u001a\u00020?8FX\u0087\u0004¢\u0006\f\u0012\u0004\bz\u0010\u0002\u001a\u0004\b{\u0010|R\u000e\u0010}\u001a\u00020~X\u0082\u0004¢\u0006\u0002\n��¨\u0006Î\u0001"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol;", "", "()V", "ACTION_APPINVITE_DIALOG", "", "ACTION_CAMERA_EFFECT", "ACTION_FEED_DIALOG", "ACTION_LIKE_DIALOG", "ACTION_MESSAGE_DIALOG", "ACTION_OGACTIONPUBLISH_DIALOG", "ACTION_OGMESSAGEPUBLISH_DIALOG", "ACTION_SHARE_STORY", "AUDIENCE_EVERYONE", "AUDIENCE_FRIENDS", "AUDIENCE_ME", "BRIDGE_ARG_ACTION_ID_STRING", "BRIDGE_ARG_APP_NAME_STRING", "BRIDGE_ARG_ERROR_BUNDLE", "BRIDGE_ARG_ERROR_CODE", "BRIDGE_ARG_ERROR_DESCRIPTION", "BRIDGE_ARG_ERROR_JSON", "BRIDGE_ARG_ERROR_SUBCODE", "BRIDGE_ARG_ERROR_TYPE", "CONTENT_SCHEME", "ERROR_APPLICATION_ERROR", "ERROR_NETWORK_ERROR", "ERROR_PERMISSION_DENIED", "ERROR_PROTOCOL_ERROR", "ERROR_SERVICE_DISABLED", "ERROR_UNKNOWN_ERROR", "ERROR_USER_CANCELED", "EXTRA_ACCESS_TOKEN", "EXTRA_APPLICATION_ID", "EXTRA_APPLICATION_NAME", "EXTRA_DATA_ACCESS_EXPIRATION_TIME", "EXTRA_DIALOG_COMPLETE_KEY", "EXTRA_DIALOG_COMPLETION_GESTURE_KEY", "EXTRA_EXPIRES_SECONDS_SINCE_EPOCH", "EXTRA_GET_INSTALL_DATA_PACKAGE", "EXTRA_GRAPH_API_VERSION", "EXTRA_LOGGER_REF", "EXTRA_PERMISSIONS", "EXTRA_PROTOCOL_ACTION", "EXTRA_PROTOCOL_BRIDGE_ARGS", "EXTRA_PROTOCOL_CALL_ID", "EXTRA_PROTOCOL_METHOD_ARGS", "EXTRA_PROTOCOL_METHOD_RESULTS", "EXTRA_PROTOCOL_VERSION", "EXTRA_PROTOCOL_VERSIONS", "EXTRA_TOAST_DURATION_MS", "EXTRA_USER_ID", "FACEBOOK_PROXY_AUTH_ACTIVITY", "FACEBOOK_PROXY_AUTH_APP_ID_KEY", "FACEBOOK_PROXY_AUTH_E2E_KEY", "FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY", "FACEBOOK_SDK_VERSION_KEY", "FACEBOOK_TOKEN_REFRESH_ACTIVITY", "IMAGE_URL_KEY", "IMAGE_USER_GENERATED_KEY", "INTENT_ACTION_PLATFORM_ACTIVITY", "INTENT_ACTION_PLATFORM_SERVICE", "KNOWN_PROTOCOL_VERSIONS", "", "", "[Ljava/lang/Integer;", "MESSAGE_GET_ACCESS_TOKEN_REPLY", "MESSAGE_GET_ACCESS_TOKEN_REQUEST", "MESSAGE_GET_AK_SEAMLESS_TOKEN_REPLY", "MESSAGE_GET_AK_SEAMLESS_TOKEN_REQUEST", "MESSAGE_GET_INSTALL_DATA_REPLY", "MESSAGE_GET_INSTALL_DATA_REQUEST", "MESSAGE_GET_LIKE_STATUS_REPLY", "MESSAGE_GET_LIKE_STATUS_REQUEST", "MESSAGE_GET_LOGIN_STATUS_REPLY", "MESSAGE_GET_LOGIN_STATUS_REQUEST", "MESSAGE_GET_PROTOCOL_VERSIONS_REPLY", "MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST", "NO_PROTOCOL_AVAILABLE", "OPEN_GRAPH_CREATE_OBJECT_KEY", "PLATFORM_PROVIDER", "PLATFORM_PROVIDER_VERSIONS", "PLATFORM_PROVIDER_VERSION_COLUMN", "PROTOCOL_VERSION_20121101", "PROTOCOL_VERSION_20130502", "PROTOCOL_VERSION_20130618", "PROTOCOL_VERSION_20131107", "PROTOCOL_VERSION_20140204", "PROTOCOL_VERSION_20140324", "PROTOCOL_VERSION_20140701", "PROTOCOL_VERSION_20141001", "PROTOCOL_VERSION_20141028", "PROTOCOL_VERSION_20141107", "PROTOCOL_VERSION_20141218", "PROTOCOL_VERSION_20160327", "PROTOCOL_VERSION_20170213", "PROTOCOL_VERSION_20170411", "PROTOCOL_VERSION_20170417", "PROTOCOL_VERSION_20171115", "RESULT_ARGS_ACCESS_TOKEN", "RESULT_ARGS_DIALOG_COMPLETE_KEY", "RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY", "RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH", "RESULT_ARGS_GRAPH_DOMAIN", "RESULT_ARGS_PERMISSIONS", "RESULT_ARGS_SIGNED_REQUEST", "STATUS_ERROR_CODE", "STATUS_ERROR_DESCRIPTION", "STATUS_ERROR_JSON", "STATUS_ERROR_SUBCODE", "STATUS_ERROR_TYPE", "TAG", "WEB_DIALOG_ACTION", "WEB_DIALOG_IS_FALLBACK", "WEB_DIALOG_PARAMS", "WEB_DIALOG_URL", "actionToAppInfoMap", "", "", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "effectCameraAppInfoList", "facebookAppInfoList", "latestKnownVersion", "getLatestKnownVersion$annotations", "getLatestKnownVersion", "()I", "protocolVersionsAsyncUpdating", "Ljava/util/concurrent/atomic/AtomicBoolean;", "buildActionToAppInfoMap", "buildEffectCameraAppInfoList", "buildFacebookAppList", "buildPlatformProviderVersionURI", "Landroid/net/Uri;", "appInfo", "computeLatestAvailableVersionFromVersionSpec", "allAvailableFacebookAppVersions", "Ljava/util/TreeSet;", "latestSdkVersion", "versionSpec", "", "createBundleForException", "Landroid/os/Bundle;", "e", "Lcom/facebook/FacebookException;", "createFacebookLiteIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "applicationId", "permissions", "", "e2e", "isRerequest", "", "isForPublish", "defaultAudience", "Lcom/facebook/login/DefaultAudience;", "clientState", "authType", "createNativeAppIntent", "ignoreAppSwitchToLoggedOut", "createPlatformActivityIntent", "callId", "action", "versionResult", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "extras", "createPlatformServiceIntent", "createProtocolResultIntent", "requestIntent", "results", "error", "createProxyAuthIntents", "createTokenRefreshIntent", "fetchAllAvailableProtocolVersionsForAppInfo", "getBridgeArgumentsFromIntent", Constants.INTENT_SCHEME, "getCallIdFromIntent", "Ljava/util/UUID;", "getErrorDataFromResultIntent", "resultIntent", "getExceptionFromErrorData", "errorData", "getLatestAvailableProtocolVersionForAction", "getLatestAvailableProtocolVersionForAppInfoList", "appInfoList", "getLatestAvailableProtocolVersionForService", "minimumVersion", "getMethodArgumentsFromIntent", "getProtocolVersionFromIntent", "getSuccessResultsFromIntent", "isErrorResult", "isVersionCompatibleWithBucketedIntent", "version", "setupProtocolRequestIntent", "", "params", "updateAllAvailableProtocolVersionsAsync", "validateActivityIntent", "validateServiceIntent", "EffectTestAppInfo", "FBLiteAppInfo", "KatanaAppInfo", "MessengerAppInfo", "NativeAppInfo", "ProtocolVersionQueryResult", "WakizashiAppInfo", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.z */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/z.class */
public final class C10340z {

    /* renamed from: a */
    public static final C10340z f33945a;

    /* renamed from: b */
    private static final String f33946b;

    /* renamed from: c */
    private static final List<AbstractC10346e> f33947c;

    /* renamed from: d */
    private static final List<AbstractC10346e> f33948d;

    /* renamed from: e */
    private static final Map<String, List<AbstractC10346e>> f33949e;

    /* renamed from: f */
    private static final AtomicBoolean f33950f = new AtomicBoolean(false);

    /* renamed from: g */
    private static final Integer[] f33951g = {20170417, 20160327, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101};

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.z$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$a.class */
    public static final class C10341a extends AbstractC10346e {
        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ String mo22938a() {
            return null;
        }

        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: b */
        public final String mo22937b() {
            return "com.facebook.arstudio.player";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018�� \u00062\u00020\u0001:\u0001\u0006B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.z$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$b.class */
    public static final class C10342b extends AbstractC10346e {

        /* renamed from: a */
        public static final C10343a f33952a = new C10343a(null);

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo$Companion;", "", "()V", "FACEBOOK_LITE_ACTIVITY", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.z$b$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$b$a.class */
        public static final class C10343a {
            private C10343a() {
            }

            public /* synthetic */ C10343a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: a */
        public final String mo22938a() {
            return "com.facebook.lite.platform.LoginGDPDialogActivity";
        }

        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: b */
        public final String mo22937b() {
            return "com.facebook.lite";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.z$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$c.class */
    public static final class C10344c extends AbstractC10346e {
        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: a */
        public final String mo22938a() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: b */
        public final String mo22937b() {
            return "com.facebook.katana";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.z$d */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$d.class */
    public static final class C10345d extends AbstractC10346e {
        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ String mo22938a() {
            return null;
        }

        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: b */
        public final String mo22937b() {
            return "com.facebook.orca";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\n\u0010\u000b\u001a\u0004\u0018\u00010\fH&J\b\u0010\r\u001a\u00020\fH&R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "()V", "availableVersions", "Ljava/util/TreeSet;", "", "fetchAvailableVersions", "", "force", "", "getAvailableVersions", "getLoginActivity", "", "getPackage", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.z$e */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$e.class */
    public static abstract class AbstractC10346e {

        /* renamed from: b */
        TreeSet<Integer> f33953b;

        /* renamed from: a */
        public abstract String mo22938a();

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
            if (r0.isEmpty() == false) goto L14;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m22942a(boolean r5) {
            /*
                r4 = this;
                r0 = r4
                monitor-enter(r0)
                r0 = r5
                if (r0 != 0) goto L1a
                r0 = r4
                java.util.TreeSet<java.lang.Integer> r0 = r0.f33953b     // Catch: java.lang.Throwable -> L28
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L1a
                r0 = r6
                if (r0 == 0) goto L1a
                r0 = r6
                boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L28
                if (r0 == 0) goto L25
            L1a:
                r0 = r4
                com.facebook.internal.z r1 = com.facebook.internal.C10340z.f33945a     // Catch: java.lang.Throwable -> L28
                r2 = r4
                java.util.TreeSet r1 = com.facebook.internal.C10340z.m22961a(r1, r2)     // Catch: java.lang.Throwable -> L28
                r0.f33953b = r1     // Catch: java.lang.Throwable -> L28
            L25:
                r0 = r4
                monitor-exit(r0)
                return
            L28:
                r6 = move-exception
                r0 = r4
                monitor-exit(r0)
                r0 = r6
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C10340z.AbstractC10346e.m22942a(boolean):void");
        }

        /* renamed from: b */
        public abstract String mo22937b();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\u0018�� \f2\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "", "()V", "<set-?>", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "appInfo", "getAppInfo", "()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "protocolVersion", "getProtocolVersion", "()I", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.z$f */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$f.class */
    public static final class C10347f {

        /* renamed from: b */
        public static final C10348a f33954b = new C10348a(null);

        /* renamed from: a */
        int f33955a;

        /* renamed from: c */
        private AbstractC10346e f33956c;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\u0004H\u0007¨\u0006\n"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;", "", "()V", "create", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "nativeAppInfo", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "protocolVersion", "", "createEmpty", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.z$f$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$f$a.class */
        public static final class C10348a {
            private C10348a() {
            }

            public /* synthetic */ C10348a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: a */
            public static C10347f m22939a() {
                C10347f c10347f = new C10347f(null);
                c10347f.f33955a = -1;
                return c10347f;
            }
        }

        private C10347f() {
        }

        public /* synthetic */ C10347f(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, m4298d2 = {"Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.z$g */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$g.class */
    public static final class C10349g extends AbstractC10346e {
        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: a */
        public final String mo22938a() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.C10340z.AbstractC10346e
        /* renamed from: b */
        public final String mo22937b() {
            return "com.facebook.wakizashi";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.z$h */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$h.class */
    public static final class RunnableC10350h implements Runnable {

        /* renamed from: a */
        public static final RunnableC10350h f33957a = new RunnableC10350h();

        RunnableC10350h() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                if (C10249a.m23108a(this)) {
                    return;
                }
                C10340z c10340z = C10340z.f33945a;
                for (AbstractC10346e abstractC10346e : C10340z.m22952c()) {
                    abstractC10346e.m22942a(true);
                }
                C10340z c10340z2 = C10340z.f33945a;
                C10340z.m22950d().set(false);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    static {
        C10340z c10340z = new C10340z();
        f33945a = c10340z;
        String name = C10340z.class.getName();
        C18524p.m3843b(name, "NativeProtocol::class.java.name");
        f33946b = name;
        f33947c = c10340z.m22948e();
        f33948d = c10340z.m22946f();
        f33949e = c10340z.m22944g();
    }

    private C10340z() {
    }

    /* renamed from: a */
    public static final int m22972a() {
        if (C10249a.m23108a(C10340z.class)) {
            return 0;
        }
        try {
            return f33951g[0].intValue();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return 0;
        }
    }

    /* renamed from: a */
    public static final int m22971a(int i) {
        if (C10249a.m23108a(C10340z.class)) {
            return 0;
        }
        try {
            return f33945a.m22959a(f33947c, new int[]{i}).f33955a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return 0;
        }
    }

    /* renamed from: a */
    private static int m22958a(TreeSet<Integer> treeSet, int i, int[] versionSpec) {
        if (C10249a.m23108a(C10340z.class)) {
            return 0;
        }
        try {
            C18524p.m3840d(versionSpec, "versionSpec");
            if (treeSet == null) {
                return -1;
            }
            int length = versionSpec.length - 1;
            Iterator<Integer> descendingIterator = treeSet.descendingIterator();
            int i2 = -1;
            while (descendingIterator.hasNext()) {
                Integer fbAppVersion = descendingIterator.next();
                C18524p.m3843b(fbAppVersion, "fbAppVersion");
                int max = Math.max(i2, fbAppVersion.intValue());
                int i3 = length;
                while (i3 >= 0 && versionSpec[i3] > fbAppVersion.intValue()) {
                    i3--;
                }
                if (i3 < 0) {
                    return -1;
                }
                length = i3;
                i2 = max;
                if (versionSpec[i3] == fbAppVersion.intValue()) {
                    if (i3 % 2 != 0) {
                        return -1;
                    }
                    return Math.min(max, i);
                }
            }
            return -1;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return 0;
        }
    }

    /* renamed from: a */
    public static final Intent m22970a(Context context) {
        Intent m22955b;
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(context, "context");
            Iterator<AbstractC10346e> it2 = f33947c.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                m22955b = m22955b(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(it2.next().mo22937b()).addCategory("android.intent.category.DEFAULT"));
            } while (m22955b == null);
            return m22955b;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: a */
    private static Intent m22969a(Context context, Intent intent) {
        ResolveInfo resolveActivity;
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(context, "context");
            if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null) {
                return null;
            }
            String str = resolveActivity.activityInfo.packageName;
            C18524p.m3843b(str, "resolveInfo.activityInfo.packageName");
            if (C10288j.m23056a(context, str)) {
                return intent;
            }
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: a */
    public static final Intent m22968a(Context context, String applicationId, Collection<String> permissions, String e2e, boolean z, EnumC10380b defaultAudience, String clientState, String authType) {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(context, "context");
            C18524p.m3840d(applicationId, "applicationId");
            C18524p.m3840d(permissions, "permissions");
            C18524p.m3840d(e2e, "e2e");
            C18524p.m3840d(defaultAudience, "defaultAudience");
            C18524p.m3840d(clientState, "clientState");
            C18524p.m3840d(authType, "authType");
            return m22969a(context, f33945a.m22962a(new C10342b(), applicationId, permissions, e2e, z, defaultAudience, clientState, authType, false));
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: a */
    public static final Intent m22966a(Intent requestIntent, Bundle bundle, FacebookException facebookException) {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(requestIntent, "requestIntent");
            UUID m22967a = m22967a(requestIntent);
            if (m22967a == null) {
                return null;
            }
            Intent intent = new Intent();
            intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", m22945f(requestIntent));
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", m22967a.toString());
            if (facebookException != null) {
                bundle2.putBundle("error", m22964a(facebookException));
            }
            intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
            if (bundle != null) {
                intent.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
            }
            return intent;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: a */
    private final Intent m22962a(AbstractC10346e abstractC10346e, String str, Collection<String> collection, String str2, boolean z, EnumC10380b enumC10380b, String str3, String str4, boolean z2) {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            String mo22938a = abstractC10346e.mo22938a();
            if (mo22938a == null) {
                return null;
            }
            Intent putExtra = new Intent().setClassName(abstractC10346e.mo22937b(), mo22938a).putExtra("client_id", str);
            C18524p.m3843b(putExtra, "Intent()\n            .se…PP_ID_KEY, applicationId)");
            putExtra.putExtra("facebook_sdk_version", C10181g.m23288k());
            if (!C10213ae.m23222a(collection)) {
                putExtra.putExtra("scope", TextUtils.join(",", collection));
            }
            if (!C10213ae.m23230a(str2)) {
                putExtra.putExtra("e2e", str2);
            }
            putExtra.putExtra(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, str3);
            putExtra.putExtra("response_type", "token,signed_request,graph_domain");
            putExtra.putExtra("return_scopes", "true");
            if (z) {
                putExtra.putExtra("default_audience", enumC10380b.getNativeProtocolAudience());
            }
            putExtra.putExtra("legacy_override", C10181g.m23289j());
            putExtra.putExtra("auth_type", str4);
            if (z2) {
                putExtra.putExtra("fail_on_logged_out", true);
            }
            return putExtra;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: a */
    public static final Bundle m22964a(FacebookException facebookException) {
        if (!C10249a.m23108a(C10340z.class) && facebookException != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("error_description", facebookException.toString());
                if (facebookException instanceof FacebookOperationCanceledException) {
                    bundle.putString("error_type", "UserCanceled");
                }
                return bundle;
            } catch (Throwable th) {
                C10249a.m23106a(th, C10340z.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static final FacebookException m22965a(Bundle bundle) {
        if (!C10249a.m23108a(C10340z.class) && bundle != null) {
            try {
                String string = bundle.getString("error_type");
                String str = string;
                if (string == null) {
                    str = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
                }
                String string2 = bundle.getString("error_description");
                String str2 = string2;
                if (string2 == null) {
                    str2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
                }
                return (str == null || !C18425p.m3961a(str, "UserCanceled")) ? new FacebookException(str2) : new FacebookOperationCanceledException(str2);
            } catch (Throwable th) {
                C10249a.m23106a(th, C10340z.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    private final C10347f m22959a(List<? extends AbstractC10346e> list, int[] iArr) {
        AbstractC10346e next;
        int m22958a;
        TreeSet<Integer> treeSet;
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            m22957b();
            if (list == null) {
                C10347f.C10348a c10348a = C10347f.f33954b;
                return C10347f.C10348a.m22939a();
            }
            Iterator<? extends AbstractC10346e> it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    C10347f.C10348a c10348a2 = C10347f.f33954b;
                    return C10347f.C10348a.m22939a();
                }
                next = it2.next();
                if (next.f33953b == null || (treeSet = next.f33953b) == null || treeSet.isEmpty()) {
                    next.m22942a(false);
                }
                m22958a = m22958a(next.f33953b, m22972a(), iArr);
            } while (m22958a == -1);
            C10347f.C10348a c10348a3 = C10347f.f33954b;
            C10347f c10347f = new C10347f(null);
            c10347f.f33956c = next;
            c10347f.f33955a = m22958a;
            return c10347f;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: a */
    public static final List<Intent> m22960a(String applicationId, Collection<String> permissions, String e2e, boolean z, EnumC10380b defaultAudience, String clientState, String authType, boolean z2) {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(applicationId, "applicationId");
            C18524p.m3840d(permissions, "permissions");
            C18524p.m3840d(e2e, "e2e");
            C18524p.m3840d(defaultAudience, "defaultAudience");
            C18524p.m3840d(clientState, "clientState");
            C18524p.m3840d(authType, "authType");
            List<AbstractC10346e> list = f33947c;
            ArrayList arrayList = new ArrayList();
            for (AbstractC10346e abstractC10346e : list) {
                Intent m22962a = f33945a.m22962a(abstractC10346e, applicationId, permissions, e2e, z, defaultAudience, clientState, authType, z2);
                if (m22962a != null) {
                    arrayList.add(m22962a);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00c5 A[LOOP:0: B:26:0x00c5->B:29:0x00d0, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f8 A[Catch: all -> 0x010f, TRY_ENTER, TryCatch #6 {all -> 0x010f, blocks: (B:5:0x0009, B:6:0x0028, B:35:0x00f8, B:42:0x0107, B:44:0x010e), top: B:55:0x0009 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.TreeSet<java.lang.Integer> m22963a(com.facebook.internal.C10340z.AbstractC10346e r8) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C10340z.m22963a(com.facebook.internal.z$e):java.util.TreeSet");
    }

    /* renamed from: a */
    public static final /* synthetic */ TreeSet m22961a(C10340z c10340z, AbstractC10346e abstractC10346e) {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            return c10340z.m22963a(abstractC10346e);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: a */
    public static final UUID m22967a(Intent intent) {
        String str;
        if (!C10249a.m23108a(C10340z.class) && intent != null) {
            try {
                if (m22956b(m22945f(intent))) {
                    Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
                    str = bundleExtra != null ? bundleExtra.getString("action_id") : null;
                } else {
                    str = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
                }
                UUID uuid = null;
                if (str != null) {
                    try {
                        uuid = UUID.fromString(str);
                    } catch (IllegalArgumentException e) {
                        uuid = null;
                    }
                }
                return uuid;
            } catch (Throwable th) {
                C10249a.m23106a(th, C10340z.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    private static Intent m22955b(Context context, Intent intent) {
        ResolveInfo resolveService;
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(context, "context");
            if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null) {
                return null;
            }
            String str = resolveService.serviceInfo.packageName;
            C18524p.m3843b(str, "resolveInfo.serviceInfo.packageName");
            if (C10288j.m23056a(context, str)) {
                return intent;
            }
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: b */
    private final Uri m22953b(AbstractC10346e abstractC10346e) {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            Uri parse = Uri.parse("content://" + abstractC10346e.mo22937b() + ".provider.PlatformProvider/versions");
            C18524p.m3843b(parse, "Uri.parse(CONTENT_SCHEME…ATFORM_PROVIDER_VERSIONS)");
            return parse;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: b */
    public static final Bundle m22954b(Intent intent) {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(intent, "intent");
            return !m22956b(m22945f(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final void m22957b() {
        if (C10249a.m23108a(C10340z.class)) {
            return;
        }
        try {
            if (!f33950f.compareAndSet(false, true)) {
                return;
            }
            C10181g.m23293f().execute(RunnableC10350h.f33957a);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
        }
    }

    /* renamed from: b */
    private static boolean m22956b(int i) {
        if (C10249a.m23108a(C10340z.class)) {
            return false;
        }
        try {
            return C18273i.m4201a(f33951g, Integer.valueOf(i)) && i >= 20140701;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return false;
        }
    }

    /* renamed from: c */
    public static final Bundle m22951c(Intent resultIntent) {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(resultIntent, "resultIntent");
            int m22945f = m22945f(resultIntent);
            Bundle extras = resultIntent.getExtras();
            Bundle bundle = extras;
            if (m22956b(m22945f)) {
                bundle = extras == null ? extras : extras.getBundle("com.facebook.platform.protocol.RESULT_ARGS");
            }
            return bundle;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ List m22952c() {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            return f33947c;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: d */
    public static final /* synthetic */ AtomicBoolean m22950d() {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            return f33950f;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: d */
    public static final boolean m22949d(Intent resultIntent) {
        if (C10249a.m23108a(C10340z.class)) {
            return false;
        }
        try {
            C18524p.m3840d(resultIntent, "resultIntent");
            Bundle m22943g = m22943g(resultIntent);
            return m22943g != null ? m22943g.containsKey("error") : resultIntent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return false;
        }
    }

    /* renamed from: e */
    public static final Bundle m22947e(Intent resultIntent) {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(resultIntent, "resultIntent");
            if (!m22949d(resultIntent)) {
                return null;
            }
            Bundle m22943g = m22943g(resultIntent);
            return m22943g != null ? m22943g.getBundle("error") : resultIntent.getExtras();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: e */
    private final List<AbstractC10346e> m22948e() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return C18282n.m4165d(new C10344c(), new C10349g());
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: f */
    private static int m22945f(Intent intent) {
        if (C10249a.m23108a(C10340z.class)) {
            return 0;
        }
        try {
            C18524p.m3840d(intent, "intent");
            return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return 0;
        }
    }

    /* renamed from: f */
    private final List<AbstractC10346e> m22946f() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            ArrayList d = C18282n.m4165d(new C10341a());
            d.addAll(m22948e());
            return d;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    /* renamed from: g */
    private static Bundle m22943g(Intent intent) {
        if (C10249a.m23108a(C10340z.class)) {
            return null;
        }
        try {
            C18524p.m3840d(intent, "intent");
            if (m22956b(m22945f(intent))) {
                return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
            }
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10340z.class);
            return null;
        }
    }

    /* renamed from: g */
    private final Map<String, List<AbstractC10346e>> m22944g() {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C10345d());
            List<AbstractC10346e> list = f33947c;
            hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
            hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
            hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", f33948d);
            hashMap.put("com.facebook.platform.action.request.SHARE_STORY", list);
            return hashMap;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }
}

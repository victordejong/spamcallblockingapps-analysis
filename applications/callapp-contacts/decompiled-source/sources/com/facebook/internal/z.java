package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
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
import kotlin.a.i;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b9\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b4\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\b\f\bÇ\u0002\u0018��2\u00020\u0001:\u000eÇ\u0001È\u0001É\u0001Ê\u0001Ë\u0001Ì\u0001Í\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u007f\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020v0u0tH\u0002J\u000f\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020v0uH\u0002J\u000f\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020v0uH\u0002J\u0013\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0084\u0001\u001a\u00020vH\u0002J.\u0010\u0085\u0001\u001a\u00020?2\u0010\u0010\u0086\u0001\u001a\u000b\u0012\u0004\u0012\u00020?\u0018\u00010\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020?2\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0007J\u0018\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u00012\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0007Jj\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\b\u0010\u0097\u0001\u001a\u00030\u0098\u00012\b\u0010\u0099\u0001\u001a\u00030\u0098\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u0004H\u0007Ji\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0007\u0010\u0084\u0001\u001a\u00020v2\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\b\u0010\u0099\u0001\u001a\u00030\u0098\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u00042\b\u0010\u009f\u0001\u001a\u00030\u0098\u0001H\u0002JD\u0010 \u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010£\u0001\u001a\u0005\u0018\u00010¤\u00012\n\u0010¥\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\u0016\u0010¦\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0007J.\u0010§\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010¨\u0001\u001a\u00030\u0090\u00012\n\u0010©\u0001\u001a\u0005\u0018\u00010\u008c\u00012\n\u0010ª\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0007Jz\u0010«\u0001\u001a\t\u0012\u0005\u0012\u00030\u0090\u00010u2\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\b\u0010\u0097\u0001\u001a\u00030\u0098\u00012\b\u0010\u0099\u0001\u001a\u00030\u0098\u00012\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u00042\b\u0010\u009f\u0001\u001a\u00030\u0098\u0001H\u0007J\u0016\u0010¬\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0007J\u0019\u0010\u00ad\u0001\u001a\t\u0012\u0004\u0012\u00020?0\u0087\u00012\u0007\u0010\u0084\u0001\u001a\u00020vH\u0002J\u0016\u0010®\u0001\u001a\u0005\u0018\u00010\u008c\u00012\b\u0010¯\u0001\u001a\u00030\u0090\u0001H\u0007J\u0018\u0010°\u0001\u001a\u0005\u0018\u00010±\u00012\n\u0010¯\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0007J\u0016\u0010²\u0001\u001a\u0005\u0018\u00010\u008c\u00012\b\u0010³\u0001\u001a\u00030\u0090\u0001H\u0007J\u0018\u0010´\u0001\u001a\u0005\u0018\u00010\u008e\u00012\n\u0010µ\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\u001d\u0010¶\u0001\u001a\u00030¤\u00012\u0007\u0010¢\u0001\u001a\u00020\u00042\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0007J%\u0010·\u0001\u001a\u00030¤\u00012\u000f\u0010¸\u0001\u001a\n\u0012\u0004\u0012\u00020v\u0018\u00010u2\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0002J\u0012\u0010¹\u0001\u001a\u00020?2\u0007\u0010º\u0001\u001a\u00020?H\u0007J\u0016\u0010»\u0001\u001a\u0005\u0018\u00010\u008c\u00012\b\u0010¯\u0001\u001a\u00030\u0090\u0001H\u0007J\u0013\u0010¼\u0001\u001a\u00020?2\b\u0010¯\u0001\u001a\u00030\u0090\u0001H\u0007J\u0016\u0010½\u0001\u001a\u0005\u0018\u00010\u008c\u00012\b\u0010³\u0001\u001a\u00030\u0090\u0001H\u0007J\u0014\u0010¾\u0001\u001a\u00030\u0098\u00012\b\u0010³\u0001\u001a\u00030\u0090\u0001H\u0007J\u0013\u0010¿\u0001\u001a\u00030\u0098\u00012\u0007\u0010À\u0001\u001a\u00020?H\u0007J?\u0010Á\u0001\u001a\u00030Â\u00012\b\u0010¯\u0001\u001a\u00030\u0090\u00012\t\u0010¡\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010¢\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010À\u0001\u001a\u00020?2\n\u0010Ã\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\n\u0010Ä\u0001\u001a\u00030Â\u0001H\u0007J-\u0010Å\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\n\u0010¯\u0001\u001a\u0005\u0018\u00010\u0090\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010vH\u0007J-\u0010Æ\u0001\u001a\u0005\u0018\u00010\u0090\u00012\b\u0010\u0091\u0001\u001a\u00030\u0092\u00012\n\u0010¯\u0001\u001a\u0005\u0018\u00010\u0090\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010vH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010.\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010/\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00100\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00101\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00102\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00103\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00104\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00105\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00106\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00107\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u00108\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00109\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010:\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010;\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010<\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0016\u0010=\u001a\b\u0012\u0004\u0012\u00020?0>X\u0082\u0004¢\u0006\u0004\n\u0002\u0010@R\u000e\u0010A\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010B\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010C\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010D\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010E\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010F\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010G\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010H\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010I\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010J\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010K\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010L\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010M\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010N\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010O\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010P\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010Q\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010R\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010S\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010T\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010U\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010V\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010W\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010X\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010Y\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010Z\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010[\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010\\\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010]\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010^\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010_\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010`\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010a\u001a\u00020?X\u0086T¢\u0006\u0002\n��R\u000e\u0010b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010g\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010h\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010i\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010j\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010k\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010l\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010m\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010n\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010o\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010p\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010q\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R \u0010s\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020v0u0tX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010w\u001a\b\u0012\u0004\u0012\u00020v0uX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010x\u001a\b\u0012\u0004\u0012\u00020v0uX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010y\u001a\u00020?8FX\u0087\u0004¢\u0006\f\u0012\u0004\bz\u0010\u0002\u001a\u0004\b{\u0010|R\u000e\u0010}\u001a\u00020~X\u0082\u0004¢\u0006\u0002\n��¨\u0006Î\u0001"}, d2 = {"Lcom/facebook/internal/NativeProtocol;", "", "()V", "ACTION_APPINVITE_DIALOG", "", "ACTION_CAMERA_EFFECT", "ACTION_FEED_DIALOG", "ACTION_LIKE_DIALOG", "ACTION_MESSAGE_DIALOG", "ACTION_OGACTIONPUBLISH_DIALOG", "ACTION_OGMESSAGEPUBLISH_DIALOG", "ACTION_SHARE_STORY", "AUDIENCE_EVERYONE", "AUDIENCE_FRIENDS", "AUDIENCE_ME", "BRIDGE_ARG_ACTION_ID_STRING", "BRIDGE_ARG_APP_NAME_STRING", "BRIDGE_ARG_ERROR_BUNDLE", "BRIDGE_ARG_ERROR_CODE", "BRIDGE_ARG_ERROR_DESCRIPTION", "BRIDGE_ARG_ERROR_JSON", "BRIDGE_ARG_ERROR_SUBCODE", "BRIDGE_ARG_ERROR_TYPE", "CONTENT_SCHEME", "ERROR_APPLICATION_ERROR", "ERROR_NETWORK_ERROR", "ERROR_PERMISSION_DENIED", "ERROR_PROTOCOL_ERROR", "ERROR_SERVICE_DISABLED", "ERROR_UNKNOWN_ERROR", "ERROR_USER_CANCELED", "EXTRA_ACCESS_TOKEN", "EXTRA_APPLICATION_ID", "EXTRA_APPLICATION_NAME", "EXTRA_DATA_ACCESS_EXPIRATION_TIME", "EXTRA_DIALOG_COMPLETE_KEY", "EXTRA_DIALOG_COMPLETION_GESTURE_KEY", "EXTRA_EXPIRES_SECONDS_SINCE_EPOCH", "EXTRA_GET_INSTALL_DATA_PACKAGE", "EXTRA_GRAPH_API_VERSION", "EXTRA_LOGGER_REF", "EXTRA_PERMISSIONS", "EXTRA_PROTOCOL_ACTION", "EXTRA_PROTOCOL_BRIDGE_ARGS", "EXTRA_PROTOCOL_CALL_ID", "EXTRA_PROTOCOL_METHOD_ARGS", "EXTRA_PROTOCOL_METHOD_RESULTS", "EXTRA_PROTOCOL_VERSION", "EXTRA_PROTOCOL_VERSIONS", "EXTRA_TOAST_DURATION_MS", "EXTRA_USER_ID", "FACEBOOK_PROXY_AUTH_ACTIVITY", "FACEBOOK_PROXY_AUTH_APP_ID_KEY", "FACEBOOK_PROXY_AUTH_E2E_KEY", "FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY", "FACEBOOK_SDK_VERSION_KEY", "FACEBOOK_TOKEN_REFRESH_ACTIVITY", "IMAGE_URL_KEY", "IMAGE_USER_GENERATED_KEY", "INTENT_ACTION_PLATFORM_ACTIVITY", "INTENT_ACTION_PLATFORM_SERVICE", "KNOWN_PROTOCOL_VERSIONS", "", "", "[Ljava/lang/Integer;", "MESSAGE_GET_ACCESS_TOKEN_REPLY", "MESSAGE_GET_ACCESS_TOKEN_REQUEST", "MESSAGE_GET_AK_SEAMLESS_TOKEN_REPLY", "MESSAGE_GET_AK_SEAMLESS_TOKEN_REQUEST", "MESSAGE_GET_INSTALL_DATA_REPLY", "MESSAGE_GET_INSTALL_DATA_REQUEST", "MESSAGE_GET_LIKE_STATUS_REPLY", "MESSAGE_GET_LIKE_STATUS_REQUEST", "MESSAGE_GET_LOGIN_STATUS_REPLY", "MESSAGE_GET_LOGIN_STATUS_REQUEST", "MESSAGE_GET_PROTOCOL_VERSIONS_REPLY", "MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST", "NO_PROTOCOL_AVAILABLE", "OPEN_GRAPH_CREATE_OBJECT_KEY", "PLATFORM_PROVIDER", "PLATFORM_PROVIDER_VERSIONS", "PLATFORM_PROVIDER_VERSION_COLUMN", "PROTOCOL_VERSION_20121101", "PROTOCOL_VERSION_20130502", "PROTOCOL_VERSION_20130618", "PROTOCOL_VERSION_20131107", "PROTOCOL_VERSION_20140204", "PROTOCOL_VERSION_20140324", "PROTOCOL_VERSION_20140701", "PROTOCOL_VERSION_20141001", "PROTOCOL_VERSION_20141028", "PROTOCOL_VERSION_20141107", "PROTOCOL_VERSION_20141218", "PROTOCOL_VERSION_20160327", "PROTOCOL_VERSION_20170213", "PROTOCOL_VERSION_20170411", "PROTOCOL_VERSION_20170417", "PROTOCOL_VERSION_20171115", "RESULT_ARGS_ACCESS_TOKEN", "RESULT_ARGS_DIALOG_COMPLETE_KEY", "RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY", "RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH", "RESULT_ARGS_GRAPH_DOMAIN", "RESULT_ARGS_PERMISSIONS", "RESULT_ARGS_SIGNED_REQUEST", "STATUS_ERROR_CODE", "STATUS_ERROR_DESCRIPTION", "STATUS_ERROR_JSON", "STATUS_ERROR_SUBCODE", "STATUS_ERROR_TYPE", "TAG", "WEB_DIALOG_ACTION", "WEB_DIALOG_IS_FALLBACK", "WEB_DIALOG_PARAMS", "WEB_DIALOG_URL", "actionToAppInfoMap", "", "", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "effectCameraAppInfoList", "facebookAppInfoList", "latestKnownVersion", "getLatestKnownVersion$annotations", "getLatestKnownVersion", "()I", "protocolVersionsAsyncUpdating", "Ljava/util/concurrent/atomic/AtomicBoolean;", "buildActionToAppInfoMap", "buildEffectCameraAppInfoList", "buildFacebookAppList", "buildPlatformProviderVersionURI", "Landroid/net/Uri;", "appInfo", "computeLatestAvailableVersionFromVersionSpec", "allAvailableFacebookAppVersions", "Ljava/util/TreeSet;", "latestSdkVersion", "versionSpec", "", "createBundleForException", "Landroid/os/Bundle;", "e", "Lcom/facebook/FacebookException;", "createFacebookLiteIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "applicationId", "permissions", "", "e2e", "isRerequest", "", "isForPublish", "defaultAudience", "Lcom/facebook/login/DefaultAudience;", "clientState", "authType", "createNativeAppIntent", "ignoreAppSwitchToLoggedOut", "createPlatformActivityIntent", "callId", "action", "versionResult", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "extras", "createPlatformServiceIntent", "createProtocolResultIntent", "requestIntent", "results", "error", "createProxyAuthIntents", "createTokenRefreshIntent", "fetchAllAvailableProtocolVersionsForAppInfo", "getBridgeArgumentsFromIntent", Constants.INTENT_SCHEME, "getCallIdFromIntent", "Ljava/util/UUID;", "getErrorDataFromResultIntent", "resultIntent", "getExceptionFromErrorData", "errorData", "getLatestAvailableProtocolVersionForAction", "getLatestAvailableProtocolVersionForAppInfoList", "appInfoList", "getLatestAvailableProtocolVersionForService", "minimumVersion", "getMethodArgumentsFromIntent", "getProtocolVersionFromIntent", "getSuccessResultsFromIntent", "isErrorResult", "isVersionCompatibleWithBucketedIntent", "version", "setupProtocolRequestIntent", "", "params", "updateAllAvailableProtocolVersionsAsync", "validateActivityIntent", "validateServiceIntent", "EffectTestAppInfo", "FBLiteAppInfo", "KatanaAppInfo", "MessengerAppInfo", "NativeAppInfo", "ProtocolVersionQueryResult", "WakizashiAppInfo", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public static final z f20025a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f20026b;

    /* renamed from: c  reason: collision with root package name */
    private static final List<e> f20027c;

    /* renamed from: d  reason: collision with root package name */
    private static final List<e> f20028d;
    private static final Map<String, List<e>> e;
    private static final AtomicBoolean f = new AtomicBoolean(false);
    private static final Integer[] g = {20170417, 20160327, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101};

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$a.class */
    public static final class a extends e {
        @Override // com.facebook.internal.z.e
        public final /* bridge */ /* synthetic */ String a() {
            return null;
        }

        @Override // com.facebook.internal.z.e
        public final String b() {
            return "com.facebook.arstudio.player";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018�� \u00062\u00020\u0001:\u0001\u0006B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$b.class */
    static final class b extends e {

        /* renamed from: a  reason: collision with root package name */
        public static final a f20029a = new a(null);

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo$Companion;", "", "()V", "FACEBOOK_LITE_ACTIVITY", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$b$a.class */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        @Override // com.facebook.internal.z.e
        public final String a() {
            return "com.facebook.lite.platform.LoginGDPDialogActivity";
        }

        @Override // com.facebook.internal.z.e
        public final String b() {
            return "com.facebook.lite";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$c.class */
    public static final class c extends e {
        @Override // com.facebook.internal.z.e
        public final String a() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.z.e
        public final String b() {
            return "com.facebook.katana";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000e\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$d.class */
    public static final class d extends e {
        @Override // com.facebook.internal.z.e
        public final /* bridge */ /* synthetic */ String a() {
            return null;
        }

        @Override // com.facebook.internal.z.e
        public final String b() {
            return "com.facebook.orca";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004J\n\u0010\u000b\u001a\u0004\u0018\u00010\fH&J\b\u0010\r\u001a\u00020\fH&R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "()V", "availableVersions", "Ljava/util/TreeSet;", "", "fetchAvailableVersions", "", "force", "", "getAvailableVersions", "getLoginActivity", "", "getPackage", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$e.class */
    public static abstract class e {

        /* renamed from: b  reason: collision with root package name */
        TreeSet<Integer> f20030b;

        public abstract String a();

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
            if (r0.isEmpty() == false) goto L_0x0025;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(boolean r5) {
            /*
                r4 = this;
                r0 = r4
                monitor-enter(r0)
                r0 = r5
                if (r0 != 0) goto L_0x001a
                r0 = r4
                java.util.TreeSet<java.lang.Integer> r0 = r0.f20030b     // Catch: all -> 0x0028
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L_0x001a
                r0 = r6
                if (r0 == 0) goto L_0x001a
                r0 = r6
                boolean r0 = r0.isEmpty()     // Catch: all -> 0x0028
                if (r0 == 0) goto L_0x0025
            L_0x001a:
                r0 = r4
                com.facebook.internal.z r1 = com.facebook.internal.z.f20025a     // Catch: all -> 0x0028
                r2 = r4
                java.util.TreeSet r1 = com.facebook.internal.z.a(r1, r2)     // Catch: all -> 0x0028
                r0.f20030b = r1     // Catch: all -> 0x0028
            L_0x0025:
                r0 = r4
                monitor-exit(r0)
                return
            L_0x0028:
                r6 = move-exception
                r0 = r4
                monitor-exit(r0)
                r0 = r6
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.z.e.a(boolean):void");
        }

        public abstract String b();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\u0018�� \f2\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "", "()V", "<set-?>", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "appInfo", "getAppInfo", "()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "", "protocolVersion", "getProtocolVersion", "()I", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$f.class */
    public static final class f {

        /* renamed from: b  reason: collision with root package name */
        public static final a f20031b = new a(null);

        /* renamed from: a  reason: collision with root package name */
        int f20032a;

        /* renamed from: c  reason: collision with root package name */
        private e f20033c;

        @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\u0004H\u0007¨\u0006\n"}, d2 = {"Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;", "", "()V", "create", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "nativeAppInfo", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "protocolVersion", "", "createEmpty", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$f$a.class */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static f a() {
                f fVar = new f(null);
                fVar.f20032a = -1;
                return fVar;
            }
        }

        private f() {
        }

        public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;", "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;", "()V", "getLoginActivity", "", "getPackage", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$g.class */
    public static final class g extends e {
        @Override // com.facebook.internal.z.e
        public final String a() {
            return "com.facebook.katana.ProxyAuth";
        }

        @Override // com.facebook.internal.z.e
        public final String b() {
            return "com.facebook.wakizashi";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/z$h.class */
    public static final class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public static final h f20034a = new h();

        h() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        z zVar = z.f20025a;
                        for (e eVar : z.c()) {
                            eVar.a(true);
                        }
                        z zVar2 = z.f20025a;
                        z.d().set(false);
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    static {
        z zVar = new z();
        f20025a = zVar;
        String name = z.class.getName();
        p.b(name, "NativeProtocol::class.java.name");
        f20026b = name;
        f20027c = zVar.e();
        f20028d = zVar.f();
        e = zVar.g();
    }

    private z() {
    }

    public static final int a() {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return 0;
        }
        try {
            return g[0].intValue();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return 0;
        }
    }

    public static final int a(int i) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return 0;
        }
        try {
            return f20025a.a(f20027c, new int[]{i}).f20032a;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return 0;
        }
    }

    private static int a(TreeSet<Integer> treeSet, int i, int[] versionSpec) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return 0;
        }
        try {
            p.d(versionSpec, "versionSpec");
            if (treeSet == null) {
                return -1;
            }
            int length = versionSpec.length - 1;
            Iterator<Integer> descendingIterator = treeSet.descendingIterator();
            int i2 = -1;
            while (descendingIterator.hasNext()) {
                Integer fbAppVersion = descendingIterator.next();
                p.b(fbAppVersion, "fbAppVersion");
                int max = Math.max(i2, fbAppVersion.intValue());
                while (length >= 0 && versionSpec[length] > fbAppVersion.intValue()) {
                    length--;
                }
                if (length < 0) {
                    return -1;
                }
                length = length;
                i2 = max;
                if (versionSpec[length] == fbAppVersion.intValue()) {
                    if (length % 2 == 0) {
                        return Math.min(max, i);
                    }
                    return -1;
                }
            }
            return -1;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return 0;
        }
    }

    public static final Intent a(Context context) {
        Intent b2;
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(context, "context");
            Iterator<e> it2 = f20027c.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                b2 = b(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(it2.next().b()).addCategory("android.intent.category.DEFAULT"));
            } while (b2 == null);
            return b2;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    private static Intent a(Context context, Intent intent) {
        ResolveInfo resolveActivity;
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(context, "context");
            if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null) {
                return null;
            }
            String str = resolveActivity.activityInfo.packageName;
            p.b(str, "resolveInfo.activityInfo.packageName");
            if (!j.a(context, str)) {
                return null;
            }
            return intent;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    public static final Intent a(Context context, String applicationId, Collection<String> permissions, String e2e, boolean z, com.facebook.login.b defaultAudience, String clientState, String authType) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(context, "context");
            p.d(applicationId, "applicationId");
            p.d(permissions, "permissions");
            p.d(e2e, "e2e");
            p.d(defaultAudience, "defaultAudience");
            p.d(clientState, "clientState");
            p.d(authType, "authType");
            return a(context, f20025a.a(new b(), applicationId, permissions, e2e, z, defaultAudience, clientState, authType, false));
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    public static final Intent a(Intent requestIntent, Bundle bundle, FacebookException facebookException) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(requestIntent, "requestIntent");
            UUID a2 = a(requestIntent);
            if (a2 == null) {
                return null;
            }
            Intent intent = new Intent();
            intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", f(requestIntent));
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", a2.toString());
            if (facebookException != null) {
                bundle2.putBundle("error", a(facebookException));
            }
            intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
            if (bundle != null) {
                intent.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
            }
            return intent;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    private final Intent a(e eVar, String str, Collection<String> collection, String str2, boolean z, com.facebook.login.b bVar, String str3, String str4, boolean z2) {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            String a2 = eVar.a();
            if (a2 == null) {
                return null;
            }
            Intent putExtra = new Intent().setClassName(eVar.b(), a2).putExtra("client_id", str);
            p.b(putExtra, "Intent()\n            .se…PP_ID_KEY, applicationId)");
            putExtra.putExtra("facebook_sdk_version", com.facebook.g.k());
            if (!ae.a(collection)) {
                putExtra.putExtra("scope", TextUtils.join(",", collection));
            }
            if (!ae.a(str2)) {
                putExtra.putExtra("e2e", str2);
            }
            putExtra.putExtra(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, str3);
            putExtra.putExtra("response_type", "token,signed_request,graph_domain");
            putExtra.putExtra("return_scopes", "true");
            if (z) {
                putExtra.putExtra("default_audience", bVar.getNativeProtocolAudience());
            }
            putExtra.putExtra("legacy_override", com.facebook.g.j());
            putExtra.putExtra("auth_type", str4);
            if (z2) {
                putExtra.putExtra("fail_on_logged_out", true);
            }
            return putExtra;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    public static final Bundle a(FacebookException facebookException) {
        if (com.facebook.internal.b.b.a.a(z.class) || facebookException == null) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("error_description", facebookException.toString());
            if (facebookException instanceof FacebookOperationCanceledException) {
                bundle.putString("error_type", "UserCanceled");
            }
            return bundle;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    public static final FacebookException a(Bundle bundle) {
        if (com.facebook.internal.b.b.a.a(z.class) || bundle == null) {
            return null;
        }
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
            return (str == null || !kotlin.h.p.a(str, "UserCanceled")) ? new FacebookException(str2) : new FacebookOperationCanceledException(str2);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    private final f a(List<? extends e> list, int[] iArr) {
        e eVar;
        int a2;
        TreeSet<Integer> treeSet;
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            b();
            if (list == null) {
                f.a aVar = f.f20031b;
                return f.a.a();
            }
            Iterator<? extends e> it2 = list.iterator();
            do {
                if (it2.hasNext()) {
                    eVar = (e) it2.next();
                    if (eVar.f20030b == null || (treeSet = eVar.f20030b) == null || treeSet.isEmpty()) {
                        eVar.a(false);
                    }
                    a2 = a(eVar.f20030b, a(), iArr);
                } else {
                    f.a aVar2 = f.f20031b;
                    return f.a.a();
                }
            } while (a2 == -1);
            f.a aVar3 = f.f20031b;
            f fVar = new f(null);
            fVar.f20033c = eVar;
            fVar.f20032a = a2;
            return fVar;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    public static final List<Intent> a(String applicationId, Collection<String> permissions, String e2e, boolean z, com.facebook.login.b defaultAudience, String clientState, String authType, boolean z2) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(applicationId, "applicationId");
            p.d(permissions, "permissions");
            p.d(e2e, "e2e");
            p.d(defaultAudience, "defaultAudience");
            p.d(clientState, "clientState");
            p.d(authType, "authType");
            List<e> list = f20027c;
            ArrayList arrayList = new ArrayList();
            for (e eVar : list) {
                Intent a2 = f20025a.a(eVar, applicationId, permissions, e2e, z, defaultAudience, clientState, authType, z2);
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00c5 A[LOOP:0: B:26:0x00c5->B:29:0x00d0, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f8 A[Catch: all -> 0x010f, TRY_ENTER, TryCatch #6 {all -> 0x010f, blocks: (B:5:0x0009, B:6:0x0028, B:35:0x00f8, B:42:0x0107, B:44:0x010e), top: B:55:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.TreeSet<java.lang.Integer> a(com.facebook.internal.z.e r8) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.z.a(com.facebook.internal.z$e):java.util.TreeSet");
    }

    public static final /* synthetic */ TreeSet a(z zVar, e eVar) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            return zVar.a(eVar);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    public static final UUID a(Intent intent) {
        String str;
        if (com.facebook.internal.b.b.a.a(z.class) || intent == null) {
            return null;
        }
        try {
            if (b(f(intent))) {
                Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
                str = bundleExtra != null ? bundleExtra.getString("action_id") : null;
            } else {
                str = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
            }
            UUID uuid = null;
            if (str != null) {
                try {
                    uuid = UUID.fromString(str);
                } catch (IllegalArgumentException e2) {
                    uuid = null;
                }
            }
            return uuid;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    private static Intent b(Context context, Intent intent) {
        ResolveInfo resolveService;
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(context, "context");
            if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null) {
                return null;
            }
            String str = resolveService.serviceInfo.packageName;
            p.b(str, "resolveInfo.serviceInfo.packageName");
            if (!j.a(context, str)) {
                return null;
            }
            return intent;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    private final Uri b(e eVar) {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            Uri parse = Uri.parse("content://" + eVar.b() + ".provider.PlatformProvider/versions");
            p.b(parse, "Uri.parse(CONTENT_SCHEME…ATFORM_PROVIDER_VERSIONS)");
            return parse;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    public static final Bundle b(Intent intent) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(intent, "intent");
            return !b(f(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    public static final void b() {
        if (!com.facebook.internal.b.b.a.a(z.class)) {
            try {
                if (f.compareAndSet(false, true)) {
                    com.facebook.g.f().execute(h.f20034a);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, z.class);
            }
        }
    }

    private static boolean b(int i) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return false;
        }
        try {
            return i.a(g, Integer.valueOf(i)) && i >= 20140701;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return false;
        }
    }

    public static final Bundle c(Intent resultIntent) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(resultIntent, "resultIntent");
            int f2 = f(resultIntent);
            Bundle extras = resultIntent.getExtras();
            Bundle bundle = extras;
            if (b(f2)) {
                bundle = extras == null ? extras : extras.getBundle("com.facebook.platform.protocol.RESULT_ARGS");
            }
            return bundle;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    public static final /* synthetic */ List c() {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            return f20027c;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    public static final /* synthetic */ AtomicBoolean d() {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            return f;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    public static final boolean d(Intent resultIntent) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return false;
        }
        try {
            p.d(resultIntent, "resultIntent");
            Bundle g2 = g(resultIntent);
            return g2 != null ? g2.containsKey("error") : resultIntent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return false;
        }
    }

    public static final Bundle e(Intent resultIntent) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(resultIntent, "resultIntent");
            if (!d(resultIntent)) {
                return null;
            }
            Bundle g2 = g(resultIntent);
            return g2 != null ? g2.getBundle("error") : resultIntent.getExtras();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    private final List<e> e() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            return n.d(new c(), new g());
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    private static int f(Intent intent) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return 0;
        }
        try {
            p.d(intent, "intent");
            return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return 0;
        }
    }

    private final List<e> f() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            ArrayList d2 = n.d(new a());
            d2.addAll(e());
            return d2;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }

    private static Bundle g(Intent intent) {
        if (com.facebook.internal.b.b.a.a(z.class)) {
            return null;
        }
        try {
            p.d(intent, "intent");
            if (!b(f(intent))) {
                return null;
            }
            return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, z.class);
            return null;
        }
    }

    private final Map<String, List<e>> g() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new d());
            List<e> list = f20027c;
            hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", list);
            hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
            hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
            hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", f20028d);
            hashMap.put("com.facebook.platform.action.request.SHARE_STORY", list);
            return hashMap;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return null;
        }
    }
}

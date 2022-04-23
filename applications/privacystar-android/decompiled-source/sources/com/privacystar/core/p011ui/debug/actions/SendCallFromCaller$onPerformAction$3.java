package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.util.InformationUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "", "selectedCaller", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.SendCallFromCaller$onPerformAction$3 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/SendCallFromCaller$onPerformAction$3.class */
final class SendCallFromCaller$onPerformAction$3 extends Lambda implements Function1<String, Unit> {
    final /* synthetic */ Context $context;
    final /* synthetic */ SendCallFromCaller this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendCallFromCaller$onPerformAction$3(SendCallFromCaller sendCallFromCaller, Context context) {
        super(1);
        this.this$0 = sendCallFromCaller;
        this.$context = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        invoke2(str);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull String selectedCaller) {
        PSActivity activity;
        Intrinsics.checkParameterIsNotNull(selectedCaller, "selectedCaller");
        Context context = this.$context;
        Toast.makeText(context, "Sending call to device from: " + selectedCaller, 0).show();
        List<Pair<String, Integer>> choices = this.this$0.getChoices();
        if (choices == null) {
            Intrinsics.throwNpe();
        }
        List<Pair<String, Integer>> list = choices;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Pair) it.next()).getFirst());
        }
        String str = selectedCaller;
        if (arrayList.contains(selectedCaller)) {
            SendCallFromCaller sendCallFromCaller = this.this$0;
            List<Pair<String, Integer>> choices2 = this.this$0.getChoices();
            if (choices2 == null) {
                Intrinsics.throwNpe();
            }
            List<Pair<String, Integer>> list2 = choices2;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list2) {
                if (Intrinsics.areEqual((String) ((Pair) obj).getFirst(), selectedCaller)) {
                    arrayList2.add(obj);
                }
            }
            str = sendCallFromCaller.getCategoryNumber(((Number) ((Pair) CollectionsKt.first((List<? extends Object>) arrayList2)).getSecond()).intValue());
        }
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse("smsto:12396662499"));
        intent.putExtra("sms_body", "*scam#1" + InformationUtil.getPhoneNumber(this.$context) + "#1" + str);
        if (intent.resolveActivity(this.$context.getPackageManager()) != null) {
            activity = this.this$0.getActivity();
            activity.startActivity(intent);
        }
    }
}

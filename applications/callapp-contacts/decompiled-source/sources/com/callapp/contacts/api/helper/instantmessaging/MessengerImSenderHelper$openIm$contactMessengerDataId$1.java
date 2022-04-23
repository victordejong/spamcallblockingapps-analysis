package com.callapp.contacts.api.helper.instantmessaging;

import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.model.Constants;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", "row", "Lcom/callapp/contacts/framework/dao/RowContext;", "onRow", "(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper$openIm$contactMessengerDataId$1.class */
final class MessengerImSenderHelper$openIm$contactMessengerDataId$1<T> implements RowCallback<Long> {

    /* renamed from: a  reason: collision with root package name */
    public static final MessengerImSenderHelper$openIm$contactMessengerDataId$1 f14200a = new MessengerImSenderHelper$openIm$contactMessengerDataId$1();

    MessengerImSenderHelper$openIm$contactMessengerDataId$1() {
    }

    @Override // com.callapp.contacts.framework.dao.RowCallback
    public final /* synthetic */ Long onRow(RowContext rowContext) {
        return (Long) rowContext.a(Constants.ID_COLUMN);
    }
}

.class public final synthetic Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/objectbox/query/c;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactDeviceIDAndPhoneChangesUtils$pnAaRZ3mSGxmntH7d8znMaJDLqc;->f$1:Ljava/util/Set;

    check-cast p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->lambda$pnAaRZ3mSGxmntH7d8znMaJDLqc(Ljava/util/List;Ljava/util/Set;Lcom/callapp/contacts/model/objectbox/ContactLookupData;)V

    return-void
.end method

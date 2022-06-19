.class Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallRecorderAdapterDataLoadTask"
.end annotation


# instance fields
.field final synthetic d:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/base/BaseContactHolder;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 180
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addDeviceDataAndFastPhotoNameLoaders()Lcom/callapp/contacts/loader/api/ContactLoader;

    return-void
.end method

.method public final a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 3

    .line 185
    iget-object p4, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    invoke-static {p4}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->b(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p4, p1, v1

    if-lez p4, :cond_2

    .line 190
    iget-object p3, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    invoke-static {p3}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->b(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide p3

    cmp-long v1, p3, p1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->b(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

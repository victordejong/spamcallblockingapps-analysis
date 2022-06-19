.class final Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/query/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;->a(JJLjava/lang/Class;Lio/objectbox/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/query/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 2

    .line 193
    check-cast p1, Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;

    .line 1196
    iget-object v0, p0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$3;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/model/objectbox/MonitoredDeviceID;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils$3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    const-class v0, Lcom/callapp/contacts/manager/contacts/ContactDeviceIDAndPhoneChangesUtils;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "updateContactIdOnAllTables: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

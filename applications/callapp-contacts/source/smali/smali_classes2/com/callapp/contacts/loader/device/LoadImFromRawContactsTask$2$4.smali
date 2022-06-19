.class Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2$4;->a:Lcom/callapp/contacts/loader/device/LoadImFromRawContactsTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 1

    const-string v0, "data_id"

    .line 1177
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

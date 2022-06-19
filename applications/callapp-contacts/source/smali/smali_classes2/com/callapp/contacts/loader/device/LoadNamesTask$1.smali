.class Lcom/callapp/contacts/loader/device/LoadNamesTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/device/LoadNamesTask;->doTask()V
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
.field final synthetic a:Lcom/callapp/contacts/loader/device/LoadNamesTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/device/LoadNamesTask;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/LoadNamesTask$1;->a:Lcom/callapp/contacts/loader/device/LoadNamesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 1

    const-string v0, "display_name"

    .line 1040
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

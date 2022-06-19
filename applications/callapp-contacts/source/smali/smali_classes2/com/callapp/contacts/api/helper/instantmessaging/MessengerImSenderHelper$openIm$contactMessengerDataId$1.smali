.class final Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper$openIm$contactMessengerDataId$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/framework/dao/RowCallback<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
        "row",
        "Lcom/callapp/contacts/framework/dao/RowContext;",
        "onRow",
        "(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper$openIm$contactMessengerDataId$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper$openIm$contactMessengerDataId$1;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper$openIm$contactMessengerDataId$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper$openIm$contactMessengerDataId$1;->a:Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper$openIm$contactMessengerDataId$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 1

    .line 1052
    sget-object v0, Lcom/callapp/contacts/model/Constants;->ID_COLUMN:Lcom/callapp/contacts/framework/dao/column/LongColumn;

    check-cast v0, Lcom/callapp/contacts/framework/dao/column/Column;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/framework/dao/RowContext;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

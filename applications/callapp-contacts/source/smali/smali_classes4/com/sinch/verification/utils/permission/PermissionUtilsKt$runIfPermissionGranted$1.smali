.class final Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/utils/permission/PermissionUtilsKt;->runIfPermissionGranted$default(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/v;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;

    invoke-direct {v0}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;-><init>()V

    sput-object v0, Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;->INSTANCE:Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/utils/permission/PermissionUtilsKt$runIfPermissionGranted$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    return-void
.end method

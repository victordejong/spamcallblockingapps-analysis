.class final synthetic Lcom/vk/api/sdk/b/j$c;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/n;",
        "Lkotlin/jvm/functions/n<",
        "Lcom/vk/api/sdk/i;",
        "Ljava/lang/String;",
        "Lcom/vk/api/sdk/i$a<",
        "Lcom/vk/api/sdk/i$b;",
        ">;",
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "p1",
        "Lcom/vk/api/sdk/VKApiValidationHandler;",
        "p2",
        "",
        "p3",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/api/sdk/b/j$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/api/sdk/b/j$c;

    invoke-direct {v0}, Lcom/vk/api/sdk/b/j$c;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/b/j$c;->a:Lcom/vk/api/sdk/b/j$c;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lcom/vk/api/sdk/i;

    const/4 v1, 0x3

    const-string v3, "handleValidation"

    const-string v4, "handleValidation(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/n;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 33
    check-cast p1, Lcom/vk/api/sdk/i;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/vk/api/sdk/i$a;

    const-string v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p3"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    invoke-interface {p1, p2, p3}, Lcom/vk/api/sdk/i;->b(Ljava/lang/String;Lcom/vk/api/sdk/i$a;)V

    .line 33
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

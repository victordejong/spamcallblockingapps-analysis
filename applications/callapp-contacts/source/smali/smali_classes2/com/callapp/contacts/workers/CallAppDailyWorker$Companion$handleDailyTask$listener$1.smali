.class final Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/CharSequence;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "photoUrl",
        "",
        "customizableSignature",
        "",
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
.field public static final a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1;

    invoke-direct {v0}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion$handleDailyTask$listener$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 52
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    .line 1105
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 1432
    iput-object p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 1107
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1108
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2381
    iput-object p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->r:Ljava/lang/String;

    .line 1110
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b()V

    .line 52
    :cond_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

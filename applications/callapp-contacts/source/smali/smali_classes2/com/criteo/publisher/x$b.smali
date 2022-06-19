.class final Lcom/criteo/publisher/x$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/x;-><init>(Lcom/criteo/publisher/h;Lcom/criteo/publisher/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/x;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/x;)V
    .locals 0

    iput-object p1, p0, Lcom/criteo/publisher/x$b;->a:Lcom/criteo/publisher/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/criteo/publisher/x$b;->a:Lcom/criteo/publisher/x;

    invoke-static {v0}, Lcom/criteo/publisher/x;->a(Lcom/criteo/publisher/x;)Lcom/criteo/publisher/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/c/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

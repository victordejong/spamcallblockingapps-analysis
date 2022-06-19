.class final Lcom/explorestack/iab/mraid/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/h;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/h;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/explorestack/iab/mraid/h$2;->a:Lcom/explorestack/iab/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 206
    check-cast p1, Ljava/lang/String;

    .line 1209
    sget-object v0, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "evaluate js complete: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

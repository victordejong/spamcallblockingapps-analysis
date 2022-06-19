.class Lcom/unknownphone/callblocker/c/a$7;
.super Ljava/lang/Object;
.source "GlobalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/c/a;->a(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/c/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/c/a;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/unknownphone/callblocker/c/a$7;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$7;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$7;->a:Lcom/unknownphone/callblocker/c/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/c/a$7;->a:Lcom/unknownphone/callblocker/c/a;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/c/a;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/c/a;->a(Lcom/unknownphone/callblocker/c/a;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

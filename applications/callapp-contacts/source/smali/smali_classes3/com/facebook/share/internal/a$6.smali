.class final Lcom/facebook/share/internal/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .locals 1

    .line 312
    sget-object v0, Lcom/facebook/internal/c$c;->Like:Lcom/facebook/internal/c$c;

    .line 313
    invoke-virtual {v0}, Lcom/facebook/internal/c$c;->toRequestCode()I

    move-result v0

    .line 312
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/a;->a(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

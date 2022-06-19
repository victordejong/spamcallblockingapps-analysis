.class public Ld2/f1$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->g(Ld2/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$l;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Ld2/f1$l;->a:Ld2/f1;

    .line 3
    iget-boolean v1, v1, Ld2/f1;->K:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ly/d;->c(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Ld2/f1$l;->a:Ld2/f1;

    .line 6
    iput-boolean v2, v0, Ld2/f1;->K:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "IllegalArgumentException when activating Omid"

    .line 7
    invoke-static {v3, v3, v0, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Ld2/f1$l;->a:Ld2/f1;

    .line 9
    iput-boolean v3, v0, Ld2/f1;->K:Z

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Ld2/f1$l;->a:Ld2/f1;

    .line 11
    iget-boolean v1, v0, Ld2/f1;->K:Z

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, v0, Ld2/f1;->O:Ld2/m;

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "AdColony"

    const-string v4, "4.6.5"

    const-string v5, "Name is null or empty"

    .line 13
    invoke-static {v1, v5}, Li4/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Version is null or empty"

    invoke-static {v4, v5}, Li4/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ld2/m;

    invoke-direct {v5, v1, v4, v2}, Ld2/m;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    iput-object v5, v0, Ld2/f1;->O:Ld2/m;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "IllegalArgumentException when creating Omid Partner"

    .line 15
    invoke-static {v3, v3, v0, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 16
    iget-object v0, p0, Ld2/f1$l;->a:Ld2/f1;

    .line 17
    iput-boolean v3, v0, Ld2/f1;->K:Z

    :cond_1
    :goto_1
    return-void
.end method

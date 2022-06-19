.class public Ld2/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/support/v4/media/a;

.field public final synthetic b:Ld2/q;


# direct methods
.method public constructor <init>(Ld2/k0;Landroid/support/v4/media/a;Ld2/q;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/r0;->a:Landroid/support/v4/media/a;

    iput-object p3, p0, Ld2/r0;->b:Ld2/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ld2/f1;->A:Z

    .line 3
    iget-object v0, p0, Ld2/r0;->a:Landroid/support/v4/media/a;

    iget-object v1, p0, Ld2/r0;->b:Ld2/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a;->x(Ld2/q;)V

    return-void
.end method

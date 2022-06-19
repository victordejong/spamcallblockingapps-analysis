.class public Ld2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/support/v4/media/a;

.field public final synthetic b:Ld2/q;


# direct methods
.method public constructor <init>(Ld2/q;Landroid/support/v4/media/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/p;->b:Ld2/q;

    iput-object p2, p0, Ld2/p;->a:Landroid/support/v4/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/p;->a:Landroid/support/v4/media/a;

    iget-object v1, p0, Ld2/p;->b:Ld2/q;

    .line 2
    iget-object v1, v1, Ld2/q;->i:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Ld2/b;->a(Ljava/lang/String;)Ld2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/a;->G(Ld2/s;)V

    return-void
.end method

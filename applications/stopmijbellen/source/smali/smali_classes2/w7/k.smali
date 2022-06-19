.class public Lw7/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln7/h;

.field public final synthetic b:Lw7/l;


# direct methods
.method public constructor <init>(Lw7/l;Ln7/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/k;->b:Lw7/l;

    iput-object p2, p0, Lw7/k;->a:Ln7/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw7/k;->b:Lw7/l;

    iget-object v1, v0, Lw7/l;->b:Lw7/p;

    iget-object v2, p0, Lw7/k;->a:Ln7/h;

    iget-object v0, v0, Lw7/l;->a:Lw7/p$a;

    invoke-virtual {v1, v2, v0}, Lw7/p;->i(Ln7/h;Lw7/p$a;)V

    return-void
.end method

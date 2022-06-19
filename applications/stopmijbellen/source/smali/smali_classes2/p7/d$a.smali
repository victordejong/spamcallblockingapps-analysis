.class public Lp7/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/d;->h(Ln7/g$a;)Lm7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/g$a;

.field public final synthetic b:Lp7/d$f;


# direct methods
.method public constructor <init>(Lp7/d;Ln7/g$a;Lp7/d$f;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lp7/d$a;->a:Ln7/g$a;

    iput-object p3, p0, Lp7/d$a;->b:Lp7/d$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp7/d$a;->a:Ln7/g$a;

    iget-object v0, v0, Ln7/g$a;->c:Ll7/b;

    iget-object v1, p0, Lp7/d$a;->b:Lp7/d$f;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    .line 2
    iget-object v0, p0, Lp7/d$a;->b:Lp7/d$f;

    invoke-virtual {v0}, Lp7/d$d;->p()V

    return-void
.end method

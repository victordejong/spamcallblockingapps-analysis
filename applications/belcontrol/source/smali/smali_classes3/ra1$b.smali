.class public final Lra1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lra1;->h(Li91;Ln91$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lra1$f;

.field public final synthetic b:Li91;

.field public final synthetic c:Ln91$b;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lra1$f;Li91;Ln91$b;Ljava/lang/String;IZZ)V
    .locals 0

    iput-object p1, p0, Lra1$b;->a:Lra1$f;

    iput-object p2, p0, Lra1$b;->b:Li91;

    iput-object p3, p0, Lra1$b;->c:Ln91$b;

    iput-object p4, p0, Lra1$b;->d:Ljava/lang/String;

    iput p5, p0, Lra1$b;->f:I

    iput-boolean p6, p0, Lra1$b;->g:Z

    iput-boolean p7, p0, Lra1$b;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lra1$b;->a:Lra1$f;

    iget-object v1, p0, Lra1$b;->b:Li91;

    iget-object v2, p0, Lra1$b;->c:Ln91$b;

    iget-object v3, p0, Lra1$b;->d:Ljava/lang/String;

    iget v4, p0, Lra1$b;->f:I

    iget-boolean v5, p0, Lra1$b;->g:Z

    iget-boolean v6, p0, Lra1$b;->h:Z

    invoke-interface/range {v0 .. v6}, Lra1$f;->b(Li91;Ln91$b;Ljava/lang/String;IZZ)V

    return-void
.end method

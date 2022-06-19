.class public final Lra1$a;
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


# direct methods
.method public constructor <init>(Lra1$f;)V
    .locals 0

    iput-object p1, p0, Lra1$a;->a:Lra1$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lra1$a;->a:Lra1$f;

    invoke-interface {v0}, Lra1$f;->a()V

    return-void
.end method

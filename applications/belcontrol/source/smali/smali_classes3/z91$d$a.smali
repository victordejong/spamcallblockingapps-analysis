.class public Lz91$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz91$d;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz91$d;


# direct methods
.method public constructor <init>(Lz91$d;)V
    .locals 0

    iput-object p1, p0, Lz91$d$a;->a:Lz91$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lz91;->c()Lz91;

    move-result-object v0

    iget-object v1, p0, Lz91$d$a;->a:Lz91$d;

    invoke-static {v1}, Lz91$d;->a(Lz91$d;)Lq71$e;

    move-result-object v1

    iget-object v2, p0, Lz91$d$a;->a:Lz91$d;

    invoke-static {v2}, Lz91$d;->b(Lz91$d;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lz91;->f(Lz91;Lq71$e;I)V

    return-void
.end method

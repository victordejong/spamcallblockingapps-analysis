.class public Lx00$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx00;


# direct methods
.method public constructor <init>(Lx00;)V
    .locals 0

    iput-object p1, p0, Lx00$d;->a:Lx00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lx00$d;->a:Lx00;

    iget-object v1, v0, Lx00;->d:Lw00;

    iget-object v0, v0, Lx00;->e:Lw00$c;

    invoke-virtual {v1, v0}, Lw00;->g(Lw00$c;)V

    return-void
.end method

.class public Lev$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->i0(Lev$d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lev$d0;

.field public final synthetic b:Lev$i0;


# direct methods
.method public constructor <init>(Lev;Lev$d0;Lev$i0;)V
    .locals 0

    iput-object p2, p0, Lev$n;->a:Lev$d0;

    iput-object p3, p0, Lev$n;->b:Lev$i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lev$n;->a:Lev$d0;

    iget-object v1, p0, Lev$n;->b:Lev$i0;

    invoke-interface {v0, v1}, Lev$d0;->a(Lev$i0;)V

    return-void
.end method

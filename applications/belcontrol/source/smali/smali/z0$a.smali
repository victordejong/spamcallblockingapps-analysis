.class public Lz0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lra$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0;->b(Lra;)Ll9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz0;


# direct methods
.method public constructor <init>(Lz0;)V
    .locals 0

    iput-object p1, p0, Lz0$a;->a:Lz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object p1, p0, Lz0$a;->a:Lz0;

    iget-object v0, p1, Lz0;->p:Lx0;

    invoke-virtual {v0, p1}, Lx0;->onItemVisibleChanged(Lz0;)V

    return-void
.end method

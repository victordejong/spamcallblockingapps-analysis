.class public final Ldz$e$e;
.super Lzy$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Ldz$e;


# direct methods
.method public constructor <init>(Ldz$e;)V
    .locals 0

    iput-object p1, p0, Ldz$e$e;->a:Ldz$e;

    invoke-direct {p0}, Lzy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzy;Laz;)V
    .locals 1

    iget-object v0, p0, Ldz$e$e;->a:Ldz$e;

    invoke-virtual {v0, p1, p2}, Ldz$e;->N(Lzy;Laz;)V

    return-void
.end method

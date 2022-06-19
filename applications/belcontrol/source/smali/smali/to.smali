.class public final synthetic Lto;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhp$b;


# instance fields
.field public final a:Luo;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Luo;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lto;->a:Luo;

    iput-object p2, p0, Lto;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public g(Lhp;Lph;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lto;->a:Luo;

    iget-object v1, p0, Lto;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2, p3}, Luo;->q(Ljava/lang/Object;Lhp;Lph;Ljava/lang/Object;)V

    return-void
.end method

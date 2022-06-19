.class public Lbm1$a;
.super Lbm1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbm1;->a(Lxl1;JLem1;)Lbm1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lem1;


# direct methods
.method public constructor <init>(Lxl1;JLem1;)V
    .locals 0

    iput-wide p2, p0, Lbm1$a;->a:J

    iput-object p4, p0, Lbm1$a;->b:Lem1;

    invoke-direct {p0}, Lbm1;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lem1;
    .locals 1

    iget-object v0, p0, Lbm1$a;->b:Lem1;

    return-object v0
.end method

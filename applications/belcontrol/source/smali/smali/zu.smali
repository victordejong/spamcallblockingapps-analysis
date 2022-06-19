.class public final synthetic Lzu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcv$a;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final f:F


# direct methods
.method public constructor <init>(Lcv$a;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzu;->a:Lcv$a;

    iput p2, p0, Lzu;->b:I

    iput p3, p0, Lzu;->c:I

    iput p4, p0, Lzu;->d:I

    iput p5, p0, Lzu;->f:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lzu;->a:Lcv$a;

    iget v1, p0, Lzu;->b:I

    iget v2, p0, Lzu;->c:I

    iget v3, p0, Lzu;->d:I

    iget v4, p0, Lzu;->f:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcv$a;->l(IIIF)V

    return-void
.end method

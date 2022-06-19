.class public final synthetic Lyu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcv$a;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lcv$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyu;->a:Lcv$a;

    iput p2, p0, Lyu;->b:I

    iput-wide p3, p0, Lyu;->c:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lyu;->a:Lcv$a;

    iget v1, p0, Lyu;->b:I

    iget-wide v2, p0, Lyu;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcv$a;->h(IJ)V

    return-void
.end method

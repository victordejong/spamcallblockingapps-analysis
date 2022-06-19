.class public final synthetic Lwu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcv$a;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lcv$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu;->a:Lcv$a;

    iput-object p2, p0, Lwu;->b:Ljava/lang/String;

    iput-wide p3, p0, Lwu;->c:J

    iput-wide p5, p0, Lwu;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lwu;->a:Lcv$a;

    iget-object v1, p0, Lwu;->b:Ljava/lang/String;

    iget-wide v2, p0, Lwu;->c:J

    iget-wide v4, p0, Lwu;->d:J

    invoke-virtual/range {v0 .. v5}, Lcv$a;->f(Ljava/lang/String;JJ)V

    return-void
.end method

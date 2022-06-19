.class public final synthetic Lci;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lfi$a;

.field public final b:I

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lfi$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lci;->a:Lfi$a;

    iput p2, p0, Lci;->b:I

    iput-wide p3, p0, Lci;->c:J

    iput-wide p5, p0, Lci;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lci;->a:Lfi$a;

    iget v1, p0, Lci;->b:I

    iget-wide v2, p0, Lci;->c:J

    iget-wide v4, p0, Lci;->d:J

    invoke-virtual/range {v0 .. v5}, Lfi$a;->h(IJJ)V

    return-void
.end method

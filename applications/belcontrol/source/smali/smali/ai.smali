.class public final synthetic Lai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lfi$a;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lfi$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai;->a:Lfi$a;

    iput-object p2, p0, Lai;->b:Ljava/lang/String;

    iput-wide p3, p0, Lai;->c:J

    iput-wide p5, p0, Lai;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lai;->a:Lfi$a;

    iget-object v1, p0, Lai;->b:Ljava/lang/String;

    iget-wide v2, p0, Lai;->c:J

    iget-wide v4, p0, Lai;->d:J

    invoke-virtual/range {v0 .. v5}, Lfi$a;->i(Ljava/lang/String;JJ)V

    return-void
.end method

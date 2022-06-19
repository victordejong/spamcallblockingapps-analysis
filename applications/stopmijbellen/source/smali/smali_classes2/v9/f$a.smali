.class public Lv9/f$a;
.super Lq9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv9/f;->K(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lv9/f;


# direct methods
.method public varargs constructor <init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/f$a;->d:Lv9/f;

    iput p4, p0, Lv9/f$a;->b:I

    iput-wide p5, p0, Lv9/f$a;->c:J

    invoke-direct {p0, p2, p3}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/f$a;->d:Lv9/f;

    iget-object v0, v0, Lv9/f;->r:Lv9/p;

    iget v1, p0, Lv9/f$a;->b:I

    iget-wide v2, p0, Lv9/f$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lv9/p;->A(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lv9/f$a;->d:Lv9/f;

    invoke-static {v0}, Lv9/f;->d(Lv9/f;)V

    :goto_0
    return-void
.end method

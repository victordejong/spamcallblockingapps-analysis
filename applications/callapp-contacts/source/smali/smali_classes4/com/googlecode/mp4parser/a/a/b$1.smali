.class final Lcom/googlecode/mp4parser/a/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/a/a/b;->a(Lcom/googlecode/mp4parser/a/g;Ljava/util/Map;Lcom/b/a/a/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/googlecode/mp4parser/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/mp4parser/a/a/b;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/a/a/b$1;->a:Lcom/googlecode/mp4parser/a/a/b;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/googlecode/mp4parser/a/g;

    check-cast p2, Lcom/googlecode/mp4parser/a/g;

    .line 1479
    invoke-interface {p1}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object p1

    .line 2094
    iget-wide v0, p1, Lcom/googlecode/mp4parser/a/h;->i:J

    .line 1479
    invoke-interface {p2}, Lcom/googlecode/mp4parser/a/g;->m()Lcom/googlecode/mp4parser/a/h;

    move-result-object p1

    .line 3094
    iget-wide p1, p1, Lcom/googlecode/mp4parser/a/h;->i:J

    sub-long/2addr v0, p1

    .line 1479
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result p1

    return p1
.end method

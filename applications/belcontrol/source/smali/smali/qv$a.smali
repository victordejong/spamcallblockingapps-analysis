.class public final Lqv$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lls$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqv;->g(Ljava/io/FileDescriptor;JJLjava/lang/Object;)Lls$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/io/FileDescriptor;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lqv$a;->a:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Lqv$a;->b:J

    iput-wide p4, p0, Lqv$a;->c:J

    iput-object p6, p0, Lqv$a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Lls;
    .locals 8

    new-instance v7, Lqv;

    iget-object v1, p0, Lqv$a;->a:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lqv$a;->b:J

    iget-wide v4, p0, Lqv$a;->c:J

    iget-object v6, p0, Lqv$a;->d:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lqv;-><init>(Ljava/io/FileDescriptor;JJLjava/lang/Object;)V

    return-object v7
.end method

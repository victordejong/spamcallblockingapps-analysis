.class public Lp9/c0;
.super Lp9/d0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lp9/u;

.field public final synthetic b:J

.field public final synthetic c:Laa/h;


# direct methods
.method public constructor <init>(Lp9/u;JLaa/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp9/c0;->a:Lp9/u;

    iput-wide p2, p0, Lp9/c0;->b:J

    iput-object p4, p0, Lp9/c0;->c:Laa/h;

    invoke-direct {p0}, Lp9/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp9/c0;->b:J

    return-wide v0
.end method

.method public k()Lp9/u;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lp9/c0;->a:Lp9/u;

    return-object v0
.end method

.method public l()Laa/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/c0;->c:Laa/h;

    return-object v0
.end method

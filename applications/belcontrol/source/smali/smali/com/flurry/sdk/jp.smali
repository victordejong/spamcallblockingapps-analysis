.class public Lcom/flurry/sdk/jp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jp$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "jp"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/jl;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jp;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/jp;J)J
    .locals 0

    iput-wide p1, p0, Lcom/flurry/sdk/jp;->c:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/flurry/sdk/jp;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/jp;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/flurry/sdk/jp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/jp;->b:Z

    return p1
.end method

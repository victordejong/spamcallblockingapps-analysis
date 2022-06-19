.class public final Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;
.super Ljava/lang/Object;
.source "FeaturedDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/communityDatabase/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/e$b;->b:Ljava/lang/String;

    return-void
.end method

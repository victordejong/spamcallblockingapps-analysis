.class public final Lcom/explorestack/iab/vast/tags/b;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "version"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/vast/tags/b;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/r;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public final w_()[Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/explorestack/iab/vast/tags/b;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public final y_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

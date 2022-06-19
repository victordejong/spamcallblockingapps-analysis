.class final Lcom/twitter/sdk/android/tweetcomposer/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/twitter/d;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lcom/twitter/d;

    invoke-direct {v0}, Lcom/twitter/d;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/d;

    return-void
.end method

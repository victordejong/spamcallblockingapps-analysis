.class public Lcom/callapp/contacts/util/video/MediaTrackFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/callapp/contacts/util/video/MediaTrackFormat;->a:I

    .line 12
    iput-object p2, p0, Lcom/callapp/contacts/util/video/MediaTrackFormat;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/callapp/contacts/util/video/MediaTrackFormat;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lcom/callapp/contacts/util/video/MediaTrackFormat;->a:I

    iput v0, p0, Lcom/callapp/contacts/util/video/MediaTrackFormat;->a:I

    .line 17
    iget-object p1, p1, Lcom/callapp/contacts/util/video/MediaTrackFormat;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/callapp/contacts/util/video/MediaTrackFormat;->b:Ljava/lang/String;

    return-void
.end method

.class public interface abstract Lorg/bluecabin/textoo/TextLinkify;
.super Ljava/lang/Object;
.source "TextLinkify.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Lorg/bluecabin/textoo/TextLinkify<",
        "TT;TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/TextLinkify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/TextLinkify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract linkifyAll()Lorg/bluecabin/textoo/TextLinkify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract linkifyEmailAddresses()Lorg/bluecabin/textoo/TextLinkify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract linkifyMapAddresses()Lorg/bluecabin/textoo/TextLinkify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract linkifyPhoneNumbers()Lorg/bluecabin/textoo/TextLinkify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract linkifyWebUrls()Lorg/bluecabin/textoo/TextLinkify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

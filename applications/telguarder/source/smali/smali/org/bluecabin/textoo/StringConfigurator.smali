.class public abstract Lorg/bluecabin/textoo/StringConfigurator;
.super Lorg/bluecabin/textoo/Configurator;
.source "StringConfigurator.java"

# interfaces
.implements Lorg/bluecabin/textoo/TextLinkify;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bluecabin/textoo/Configurator<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/bluecabin/textoo/TextLinkify<",
        "Landroid/text/Spanned;",
        "Lorg/bluecabin/textoo/SpannedConfigurator;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/bluecabin/textoo/TextooContext;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/bluecabin/textoo/Configurator;-><init>(Lorg/bluecabin/textoo/TextooContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/bluecabin/textoo/StringConfigurator;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract apply()Ljava/lang/String;
.end method

.method public abstract linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public abstract linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/TextLinkify;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/bluecabin/textoo/StringConfigurator;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/TextLinkify;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bluecabin/textoo/StringConfigurator;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public abstract linkifyAll()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyAll()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/bluecabin/textoo/StringConfigurator;->linkifyAll()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkifyEmailAddresses()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyEmailAddresses()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/bluecabin/textoo/StringConfigurator;->linkifyEmailAddresses()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkifyMapAddresses()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyMapAddresses()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/bluecabin/textoo/StringConfigurator;->linkifyMapAddresses()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkifyPhoneNumbers()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyPhoneNumbers()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/bluecabin/textoo/StringConfigurator;->linkifyPhoneNumbers()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkifyWebUrls()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyWebUrls()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/bluecabin/textoo/StringConfigurator;->linkifyWebUrls()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseHtml()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public abstract parseHtml(Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

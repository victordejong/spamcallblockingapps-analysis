.class public abstract Lorg/bluecabin/textoo/SpannedConfigurator;
.super Lorg/bluecabin/textoo/Configurator;
.source "SpannedConfigurator.java"

# interfaces
.implements Lorg/bluecabin/textoo/TextLinkify;
.implements Lorg/bluecabin/textoo/LinksHandling;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bluecabin/textoo/Configurator<",
        "Landroid/text/Spanned;",
        ">;",
        "Lorg/bluecabin/textoo/TextLinkify<",
        "Landroid/text/Spanned;",
        "Lorg/bluecabin/textoo/SpannedConfigurator;",
        ">;",
        "Lorg/bluecabin/textoo/LinksHandling<",
        "Landroid/text/Spanned;",
        "Lorg/bluecabin/textoo/SpannedConfigurator;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/bluecabin/textoo/TextooContext;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/bluecabin/textoo/Configurator;-><init>(Lorg/bluecabin/textoo/TextooContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/LinksHandling;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/SpannedConfigurator;->addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public abstract addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public abstract apply()Landroid/text/Spanned;
.end method

.method public bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/bluecabin/textoo/SpannedConfigurator;->apply()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public abstract linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/TextLinkify;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/bluecabin/textoo/SpannedConfigurator;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/TextLinkify;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bluecabin/textoo/SpannedConfigurator;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object p1

    return-object p1
.end method

.method public abstract linkifyAll()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyAll()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/bluecabin/textoo/SpannedConfigurator;->linkifyAll()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkifyEmailAddresses()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyEmailAddresses()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/bluecabin/textoo/SpannedConfigurator;->linkifyEmailAddresses()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkifyMapAddresses()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyMapAddresses()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/bluecabin/textoo/SpannedConfigurator;->linkifyMapAddresses()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkifyPhoneNumbers()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyPhoneNumbers()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/bluecabin/textoo/SpannedConfigurator;->linkifyPhoneNumbers()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

.method public abstract linkifyWebUrls()Lorg/bluecabin/textoo/SpannedConfigurator;
.end method

.method public bridge synthetic linkifyWebUrls()Lorg/bluecabin/textoo/TextLinkify;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lorg/bluecabin/textoo/SpannedConfigurator;->linkifyWebUrls()Lorg/bluecabin/textoo/SpannedConfigurator;

    move-result-object v0

    return-object v0
.end method

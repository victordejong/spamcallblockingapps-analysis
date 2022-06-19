.class public Lcom/explorestack/iab/mraid/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field static final synthetic b:Z = true

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/explorestack/iab/mraid/f;->a:J

    const-string v2, "close"

    const-string v3, "expand"

    const-string v4, "open"

    const-string v5, "playVideo"

    const-string v6, "resize"

    const-string v7, "setOrientationProperties"

    const-string v8, "setResizeProperties"

    const-string v9, "useCustomClose"

    const-string v10, "noFill"

    const-string v11, "loaded"

    const-string v12, "AdStarted"

    const-string v13, "AdStopped"

    const-string v14, "AdSkipped"

    const-string v15, "AdSkippableStateChange"

    const-string v16, "AdVideoStart"

    const-string v17, "AdVideoFirstQuartile"

    const-string v18, "AdVideoMidpoint"

    const-string v19, "AdVideoThirdQuartile"

    const-string v20, "AdVideoComplete"

    const-string v21, "AdUserClose"

    const-string v22, "AdPaused"

    const-string v23, "AdPlaying"

    const-string v24, "AdClickThru"

    const-string v25, "AdLog"

    const-string v26, "AdError"

    .line 32
    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/mraid/f;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 70
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 57
    invoke-static {p0, p1}, Lcom/explorestack/iab/mraid/f;->b(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 58
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static a(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const v0, 0x1020002

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method static a()Ljava/lang/String;
    .locals 3

    .line 47
    sget-object v0, Lcom/explorestack/iab/mraid/f;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IWZ1bmN0aW9uKCl7Y29uc29sZS5sb2coIk1SQUlEIG9iamVjdCBsb2FkaW5nLi4uIik7dmFyIGU9MCx0PTEsaT0yLG49MyxyPXQsbz17ZDpmdW5jdGlvbih0KXtyPD1lJiZjb25zb2xlLmxvZygiKEQtbXJhaWQuanMpICIrdCl9LGk6ZnVuY3Rpb24oZSl7cjw9dCYmY29uc29sZS5sb2coIihJLW1yYWlkLmpzKSAiK2UpfSx3OmZ1bmN0aW9uKGUpe3I8PWkmJmNvbnNvbGUubG9nKCIoVy1tcmFpZC5qcykgIitlKX0sZTpmdW5jdGlvbihlKXtyPD1uJiZjb25zb2xlLmxvZygiKEUtbXJhaWQuanMpICIrZSl9fSxzPXdpbmRvdy5tcmFpZD17aXNOYXRpdmVTZGtSZWFkeTohMSxuYXRpdmVDYWxsUXVldWU6W10sbmF0aXZlQ2FsbFJ1bm5pbmc6ITF9LGE9cy5TVEFURVM9e0xPQURJTkc6ImxvYWRpbmciLERFRkFVTFQ6ImRlZmF1bHQiLEVYUEFOREVEOiJleHBhbmRlZCIsUkVTSVpFRDoicmVzaXplZCIsSElEREVOOiJoaWRkZW4ifSxkPXMuUExBQ0VNRU5UX1RZUEVTPXtJTkxJTkU6ImlubGluZSIsSU5URVJTVElUSUFMOiJpbnRlcnN0aXRpYWwifSxmPXMuUkVTSVpFX1BST1BFUlRJRVNfQ1VTVE9NX0NMT1NFX1BPU0lUSU9OPXtUT1BfTEVGVDoidG9wLWxlZnQiLFRPUF9DRU5URVI6InRvcC1jZW50ZXIiLFRPUF9SSUdIVDoidG9wLXJpZ2h0IixDRU5URVI6ImNlbnRlciIsQk9UVE9NX0xFRlQ6ImJvdHRvbS1sZWZ0IixCT1RUT01fQ0VOVEVSOiJib3R0b20tY2VudGVyIixCT1RUT01fUklHSFQ6ImJvdHRvbS1yaWdodCJ9LGw9cy5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OPXtQT1JUUkFJVDoicG9ydHJhaXQiLExBTkRTQ0FQRToibGFuZHNjYXBlIixOT05FOiJub25lIn0sdT1zLkVWRU5UUz17RVJST1I6ImVycm9yIixSRUFEWToicmVhZHkiLFNJWkVDSEFOR0U6InNpemVDaGFuZ2UiLFNUQVRFQ0hBTkdFOiJzdGF0ZUNoYW5nZSIsVklFV0FCTEVDSEFOR0U6InZpZXdhYmxlQ2hhbmdlIn0saD0ocy5TVVBQT1JURURfRkVBVFVSRVM9e1NNUzoic21zIixURUw6InRlbCIsQ0FMRU5EQVI6ImNhbGVuZGFyIixTVE9SRVBJQ1RVUkU6InN0b3JlUGljdHVyZSIsSU5MSU5FVklERU86ImlubGluZVZpZGVvIn0sYS5MT0FESU5HKSxjPWQuSU5MSU5FLEU9e30sZz0hMSxtPSExLHA9ITEsdj17d2lkdGg6MCxoZWlnaHQ6MCx1c2VDdXN0b21DbG9zZTohMSxpc01vZGFsOiEwfSxDPXthbGxvd09yaWVudGF0aW9uQ2hhbmdlOiEwLGZvcmNlT3JpZW50YXRpb246bC5OT05FfSxPPXt3aWR0aDowLGhlaWdodDowLGN1c3RvbUNsb3NlUG9zaXRpb246Zi5UT1BfUklHSFQsb2Zmc2V0WDowLG9mZnNldFk6MCxhbGxvd09mZnNjcmVlbjohMH0sdz17eDowLHk6MCx3aWR0aDowLGhlaWdodDowfSxQPXt4OjAseTowLHdpZHRoOjAsaGVpZ2h0OjB9LFI9e3dpZHRoOjAsaGVpZ2h0OjB9LHk9e3dpZHRoOjAsaGVpZ2h0OjB9LFM9e307cy5hZGRFdmVudExpc3RlbmVyPWZ1bmN0aW9uKGUsdCl7aWYoby5pKCJtcmFpZC5hZGRFdmVudExpc3RlbmVyICIrZSsiOiAiK1N0cmluZyh0KSksZSYmdClpZih4KGUsdSkpe2Zvcih2YXIgaT1TW2VdPVNbZV18fFtdLG49MDtuPGkubGVuZ3RoO24rKyl7dmFyIHI9U3RyaW5nKHQpLGE9U3RyaW5nKGlbbl0pO2lmKHQ9PT1pW25dfHxyPT09YSlyZXR1cm4gdm9pZCBvLmkoImxpc3RlbmVyICIrcisiIGlzIGFscmVhZHkgcmVnaXN0ZXJlZCBmb3IgZXZlbnQgIitlKX1pLnB1c2godCl9ZWxzZSBzLmZpcmVFcnJvckV2ZW50KCJVbmtub3duIE1SQUlEIGV2ZW50OiAiK2UsImFkZEV2ZW50TGlzdGVuZXIiKTtlbHNlIHMuZmlyZUVycm9yRXZlbnQoIkJvdGggZXZlbnQgYW5kIGxpc3RlbmVyIGFyZSByZXF1aXJlZC4iLCJhZGRFdmVudExpc3RlbmVyIil9LHMuY3JlYXRlQ2FsZW5kYXJFdmVudD1mdW5jdGlvbihlKXtvLmkoIm1yYWlkLmNyZWF0ZUNhbGVuZGFyRXZlbnQgd2l0aCAiK2UpLEVbcy5TVVBQT1JURURfRkVBVFVSRVMuQ0FMRU5EQVJdP04oImNyZWF0ZUNhbGVuZGFyRXZlbnQ/ZXZlbnRKU09OPSIrSlNPTi5zdHJpbmdpZnkoZSkpOm8uZSgiY3JlYXRlQ2FsZW5kYXJFdmVudCBpcyBub3Qgc3VwcG9ydGVkIil9LHMuY2xvc2U9ZnVuY3Rpb24oKXtvLmkoIm1yYWlkLmNsb3NlIiksaD09PWEuTE9BRElOR3x8aD09PWEuREVGQVVMVCYmYz09PWQuSU5MSU5FfHxoPT09YS5ISURERU58fE4oImNsb3NlIil9LHMuZXhwYW5kPWZ1bmN0aW9uKGUpe3ZvaWQgMD09PWU/by5pKCJtcmFpZC5leHBhbmQgKDEtcGFydCkiKTpvLmkoIm1yYWlkLmV4cGFuZCAiK2UpLGMhPT1kLklOTElORXx8aCE9PWEuREVGQVVMVCYmaCE9PWEuUkVTSVpFRHx8Tih2b2lkIDA9PT1lPyJleHBhbmQiOiJleHBhbmQ/dXJsPSIrZW5jb2RlVVJJQ29tcG9uZW50KGUpKX0scy5nZXRDdXJyZW50UG9zaXRpb249ZnVuY3Rpb24oKXtyZXR1cm4gby5pKCJtcmFpZC5nZXRDdXJyZW50UG9zaXRpb24iKSx3fSxzLmdldERlZmF1bHRQb3NpdGlvbj1mdW5jdGlvbigpe3JldHVybiBvLmkoIm1yYWlkLmdldERlZmF1bHRQb3NpdGlvbiIpLFB9LHMuZ2V0RXhwYW5kUHJvcGVydGllcz1mdW5jdGlvbigpe3JldHVybiBvLmkoIm1yYWlkLmdldEV4cGFuZFByb3BlcnRpZXMiKSx2fSxzLmdldE1heFNpemU9ZnVuY3Rpb24oKXtyZXR1cm4gby5pKCJtcmFpZC5nZXRNYXhTaXplIiksUn0scy5nZXRPcmllbnRhdGlvblByb3BlcnRpZXM9ZnVuY3Rpb24oKXtyZXR1cm4gby5pKCJtcmFpZC5nZXRPcmllbnRhdGlvblByb3BlcnRpZXMiKSxDfSxzLmdldFBsYWNlbWVudFR5cGU9ZnVuY3Rpb24oKXtyZXR1cm4gby5pKCJtcmFpZC5nZXRQbGFjZW1lbnRUeXBlIiksY30scy5nZXRSZXNpemVQcm9wZXJ0aWVzPWZ1bmN0aW9uKCl7cmV0dXJuIG8uaSgibXJhaWQuZ2V0UmVzaXplUHJvcGVydGllcyIpLE99LHMuZ2V0U2NyZWVuU2l6ZT1mdW5jdGlvbigpe3JldHVybiBvLmkoIm1yYWlkLmdldFNjcmVlblNpemUiKSx5fSxzLmdldFN0YXRlPWZ1bmN0aW9uKCl7cmV0dXJuIG8uaSgibXJhaWQuZ2V0U3RhdGUiKSxofSxzLmdldFZlcnNpb249ZnVuY3Rpb24oKXtyZXR1cm4gby5pKCJtcmFpZC5nZXRWZXJzaW9uIiksIjIuMCJ9LHMuaXNWaWV3YWJsZT1mdW5jdGlvbigpe3JldHVybiBvLmkoIm1yYWlkLmlzVmlld2FibGUiKSxnfSxzLm9wZW49ZnVuY3Rpb24oZSl7by5pKCJtcmFpZC5vcGVuICIrZSksTigib3Blbj91cmw9IitlbmNvZGVVUklDb21wb25lbnQoZSkpfSxzLnBsYXlWaWRlbz1mdW5jdGlvbihlKXtvLmkoIm1yYWlkLnBsYXlWaWRlbyAiK2UpLE4oInBsYXlWaWRlbz91cmw9IitlbmNvZGVVUklDb21wb25lbnQoZSkpfSxzLnJlbW92ZUV2ZW50TGlzdGVuZXI9ZnVuY3Rpb24oZSx0KXtpZihvLmkoIm1yYWlkLnJlbW92ZUV2ZW50TGlzdGVuZXIgIitlKyIgOiAiK1N0cmluZyh0KSksZSlpZih4KGUsdSkpaWYoUy5oYXNPd25Qcm9wZXJ0eShlKSlpZih0KXtmb3IodmFyIGk9U1tlXSxuPWkubGVuZ3RoLHI9MDtyPG47cisrKXt2YXIgYT1pW3JdLGQ9U3RyaW5nKHQpLGY9U3RyaW5nKGEpO2lmKHQ9PT1hfHxkPT09Zil7aS5zcGxpY2UociwxKTticmVha319cj09PW4mJm8uaSgibGlzdGVuZXIgIitkKyIgbm90IGZvdW5kIGZvciBldmVudCAiK2UpLDA9PT1pLmxlbmd0aCYmZGVsZXRlIFNbZV19ZWxzZSBkZWxldGUgU1tlXTtlbHNlIG8uaSgibm8gbGlzdGVuZXJzIHJlZ2lzdGVyZWQgZm9yIGV2ZW50ICIrZSk7ZWxzZSBzLmZpcmVFcnJvckV2ZW50KCJVbmtub3duIE1SQUlEIGV2ZW50OiAiK2UsInJlbW92ZUV2ZW50TGlzdGVuZXIiKTtlbHNlIHMuZmlyZUVycm9yRXZlbnQoIkV2ZW50IGlzIHJlcXVpcmVkLiIsInJlbW92ZUV2ZW50TGlzdGVuZXIiKX0scy5yZXNpemU9ZnVuY3Rpb24oKXsoby5pKCJtcmFpZC5yZXNpemUiKSxjIT09ZC5JTlRFUlNUSVRJQUwmJmghPT1hLkxPQURJTkcmJmghPT1hLkhJRERFTikmJihoIT09YS5FWFBBTkRFRD9wP04oInJlc2l6ZT8iKygid2lkdGg9IitPLndpZHRoKyImaGVpZ2h0PSIrTy5oZWlnaHQrIiZvZmZzZXRYPSIrKE8ub2Zmc2V0WCthZGp1c3RtZW50cy54KSsiJm9mZnNldFk9IisoTy5vZmZzZXRZK2FkanVzdG1lbnRzLnkpKyImY3VzdG9tQ2xvc2VQb3NpdGlvbj0iK08uY3VzdG9tQ2xvc2VQb3NpdGlvbisiJmFsbG93T2Zmc2NyZWVuPSIrTy5hbGxvd09mZnNjcmVlbikpOnMuZmlyZUVycm9yRXZlbnQoIm1yYWlkLnJlc2l6ZSBpcyBub3QgcmVhZHkgdG8gYmUgY2FsbGVkIiwibXJhaWQucmVzaXplIik6cy5maXJlRXJyb3JFdmVudCgibXJhaWQucmVzaXplIGNhbGxlZCB3aGVuIGFkIGlzIGluIGV4cGFuZGVkIHN0YXRlIiwibXJhaWQucmVzaXplIikpfSxzLnNldEV4cGFuZFByb3BlcnRpZXM9ZnVuY3Rpb24oZSl7aWYoby5pKCJtcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzIiksSShlLCJzZXRFeHBhbmRQcm9wZXJ0aWVzIikpe2Zvcih2YXIgdD12LnVzZUN1c3RvbUNsb3NlLGk9WyJ3aWR0aCIsImhlaWdodCIsInVzZUN1c3RvbUNsb3NlIl0sbj0wO248aS5sZW5ndGg7bisrKXt2YXIgcj1pW25dO2UuaGFzT3duUHJvcGVydHkocikmJih2W3JdPWVbcl0pfXYudXNlQ3VzdG9tQ2xvc2UhPT10JiZOKCJ1c2VDdXN0b21DbG9zZT91c2VDdXN0b21DbG9zZT0iK3YudXNlQ3VzdG9tQ2xvc2UpLG09ITB9ZWxzZSBvLmUoImZhaWxlZCB2YWxpZGF0aW9uIil9LHMuc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzPWZ1bmN0aW9uKGUpe2lmKG8uaSgibXJhaWQuc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIiksSShlLCJzZXRPcmllbnRhdGlvblByb3BlcnRpZXMiKSl7dmFyIHQ9e307dC5hbGxvd09yaWVudGF0aW9uQ2hhbmdlPUMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZSx0LmZvcmNlT3JpZW50YXRpb249Qy5mb3JjZU9yaWVudGF0aW9uO2Zvcih2YXIgaT1bImFsbG93T3JpZW50YXRpb25DaGFuZ2UiLCJmb3JjZU9yaWVudGF0aW9uIl0sbj0wO248aS5sZW5ndGg7bisrKXt2YXIgcj1pW25dO2UuaGFzT3duUHJvcGVydHkocikmJih0W3JdPWVbcl0pfWlmKHQuYWxsb3dPcmllbnRhdGlvbkNoYW5nZSYmdC5mb3JjZU9yaWVudGF0aW9uIT09cy5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OLk5PTkUpcy5maXJlRXJyb3JFdmVudCgiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSBpcyB0cnVlIGJ1dCBmb3JjZU9yaWVudGF0aW9uIGlzICIrdC5mb3JjZU9yaWVudGF0aW9uLCJzZXRPcmllbnRhdGlvblByb3BlcnRpZXMiKTtlbHNlIEMuYWxsb3dPcmllbnRhdGlvbkNoYW5nZT10LmFsbG93T3JpZW50YXRpb25DaGFuZ2UsQy5mb3JjZU9yaWVudGF0aW9uPXQuZm9yY2VPcmllbnRhdGlvbixOKCJzZXRPcmllbnRhdGlvblByb3BlcnRpZXM/IisoImFsbG93T3JpZW50YXRpb25DaGFuZ2U9IitDLmFsbG93T3JpZW50YXRpb25DaGFuZ2UrIiZmb3JjZU9yaWVudGF0aW9uPSIrQy5mb3JjZU9yaWVudGF0aW9uKSl9ZWxzZSBvLmUoImZhaWxlZCB2YWxpZGF0aW9uIil9LHMuc2V0UmVzaXplUHJvcGVydGllcz1mdW5jdGlvbihlKXtvLmkoIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKSxwPSExO2Zvcih2YXIgdD1bIndpZHRoIiwiaGVpZ2h0Iiwib2Zmc2V0WCIsIm9mZnNldFkiXSxpPTA7aTx0Lmxlbmd0aDtpKyspe3ZhciBuPXRbaV07aWYoIWUuaGFzT3duUHJvcGVydHkobikpcmV0dXJuIHZvaWQgcy5maXJlRXJyb3JFdmVudCgicmVxdWlyZWQgcHJvcGVydHkgIituKyIgaXMgbWlzc2luZyIsIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKX1pZihJKGUsInNldFJlc2l6ZVByb3BlcnRpZXMiKSl7dmFyIHI9e3g6MCx5OjB9O2lmKGUuaGFzT3duUHJvcGVydHkoImFsbG93T2Zmc2NyZWVuIik/ZS5hbGxvd09mZnNjcmVlbjpPLmFsbG93T2Zmc2NyZWVuKXtpZighZnVuY3Rpb24oZSl7by5kKCJpc0Nsb3NlUmVnaW9uT25TY3JlZW4iKSxvLmQoImRlZmF1bHRQb3NpdGlvbiAiK1AueCsiICIrUC55KSxvLmQoIm9mZnNldCAiK2Uub2Zmc2V0WCsiICIrZS5vZmZzZXRZKTt2YXIgdD17fTt0Lng9UC54K2Uub2Zmc2V0WCx0Lnk9UC55K2Uub2Zmc2V0WSx0LndpZHRoPWUud2lkdGgsdC5oZWlnaHQ9ZS5oZWlnaHQsRCgicmVzaXplUmVjdCIsdCk7dmFyIGk9ZS5oYXNPd25Qcm9wZXJ0eSgiY3VzdG9tQ2xvc2VQb3NpdGlvbiIpP2UuY3VzdG9tQ2xvc2VQb3NpdGlvbjpPLmN1c3RvbUNsb3NlUG9zaXRpb247by5kKCJjdXN0b21DbG9zZVBvc2l0aW9uICIraSk7dmFyIG49e3dpZHRoOjUwLGhlaWdodDo1MH07LTEhPT1pLnNlYXJjaCgibGVmdCIpP24ueD10Lng6LTEhPT1pLnNlYXJjaCgiY2VudGVyIik/bi54PXQueCt0LndpZHRoLzItMjU6LTEhPT1pLnNlYXJjaCgicmlnaHQiKSYmKG4ueD10LngrdC53aWR0aC01MCk7LTEhPT1pLnNlYXJjaCgidG9wIik/bi55PXQueToiY2VudGVyIj09PWk/bi55PXQueSt0LmhlaWdodC8yLTI1Oi0xIT09aS5zZWFyY2goImJvdHRvbSIpJiYobi55PXQueSt0LmhlaWdodC01MCk7dmFyIHI9e3g6MCx5OjB9O3JldHVybiByLndpZHRoPVIud2lkdGgsci5oZWlnaHQ9Ui5oZWlnaHQseihyLG4pfShlKSlyZXR1cm4gdm9pZCBzLmZpcmVFcnJvckV2ZW50KCJjbG9zZSBldmVudCByZWdpb24gd2lsbCBub3QgYXBwZWFyIGVudGlyZWx5IG9uc2NyZWVuIiwibXJhaWQuc2V0UmVzaXplUHJvcGVydGllcyIpfWVsc2V7aWYoZS53aWR0aD5SLndpZHRofHxlLmhlaWdodD5SLmhlaWdodClyZXR1cm4gdm9pZCBzLmZpcmVFcnJvckV2ZW50KCJyZXNpemUgd2lkdGggb3IgaGVpZ2h0IGlzIGdyZWF0ZXIgdGhhbiB0aGUgbWF4U2l6ZSB3aWR0aCBvciBoZWlnaHQiLCJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7cj1mdW5jdGlvbihlKXtvLmQoImZpdFJlc2l6ZVZpZXdPblNjcmVlbiIpLG8uZCgiZGVmYXVsdFBvc2l0aW9uICIrUC54KyIgIitQLnkpLG8uZCgib2Zmc2V0ICIrZS5vZmZzZXRYKyIgIitlLm9mZnNldFkpO3ZhciB0PXt9O3QueD1QLngrZS5vZmZzZXRYLHQueT1QLnkrZS5vZmZzZXRZLHQud2lkdGg9ZS53aWR0aCx0LmhlaWdodD1lLmhlaWdodCxEKCJyZXNpemVSZWN0Iix0KTt2YXIgaT17eDowLHk6MH07aS53aWR0aD1SLndpZHRoLGkuaGVpZ2h0PVIuaGVpZ2h0O3ZhciBuPXt4OjAseTowfTtpZih6KGksdCkpcmV0dXJuIG8uZCgibm8gYWRqdXN0bWVudCBuZWNlc3NhcnkiKSxuO3QueDxpLng/bi54PWkueC10Lng6dC54K3Qud2lkdGg+aS54K2kud2lkdGgmJihuLng9aS54K2kud2lkdGgtKHQueCt0LndpZHRoKSk7by5kKCJhZGp1c3RtZW50cy54ICIrbi54KSx0Lnk8aS55P24ueT1pLnktdC55OnQueSt0LmhlaWdodD5pLnkraS5oZWlnaHQmJihuLnk9aS55K2kuaGVpZ2h0LSh0LnkrdC5oZWlnaHQpKTtyZXR1cm4gby5kKCJhZGp1c3RtZW50cy55ICIrbi55KSx0Lng9UC54K2Uub2Zmc2V0WCtuLngsdC55PVAueStlLm9mZnNldFkrbi55LEQoImFkanVzdGVkIHJlc2l6ZVJlY3QiLHQpLG59KGUpfXZhciBhPVsid2lkdGgiLCJoZWlnaHQiLCJvZmZzZXRYIiwib2Zmc2V0WSIsImN1c3RvbUNsb3NlUG9zaXRpb24iLCJhbGxvd09mZnNjcmVlbiJdO2ZvcihpPTA7aTxhLmxlbmd0aDtpKyspe249YVtpXTtlLmhhc093blByb3BlcnR5KG4pJiYoT1tuXT1lW25dKX1OKCJzZXRSZXNpemVQcm9wZXJ0aWVzPyIrKCJ3aWR0aD0iK08ud2lkdGgrIiZoZWlnaHQ9IitPLmhlaWdodCsiJm9mZnNldFg9IisoTy5vZmZzZXRYK3IueCkrIiZvZmZzZXRZPSIrKE8ub2Zmc2V0WStyLnkpKyImY3VzdG9tQ2xvc2VQb3NpdGlvbj0iK08uY3VzdG9tQ2xvc2VQb3NpdGlvbisiJmFsbG93T2Zmc2NyZWVuPSIrTy5hbGxvd09mZnNjcmVlbikpLHA9ITB9ZWxzZSBzLmZpcmVFcnJvckV2ZW50KCJmYWlsZWQgdmFsaWRhdGlvbiIsIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKX0scy5zdG9yZVBpY3R1cmU9ZnVuY3Rpb24oZSl7by5pKCJtcmFpZC5zdG9yZVBpY3R1cmUgIitlKSxFW3MuU1VQUE9SVEVEX0ZFQVRVUkVTLlNUT1JFUElDVFVSRV0/Tigic3RvcmVQaWN0dXJlP3VybD0iK2VuY29kZVVSSUNvbXBvbmVudChlKSk6by5lKCJzdG9yZVBpY3R1cmUgaXMgbm90IHN1cHBvcnRlZCIpfSxzLnN1cHBvcnRzPWZ1bmN0aW9uKGUpe28uaSgibXJhaWQuc3VwcG9ydHMgIitlKyIgIitFW2VdKTt2YXIgdD1FW2VdO3JldHVybiB2b2lkIDA9PT10JiYodD0hMSksdH0scy51c2VDdXN0b21DbG9zZT1mdW5jdGlvbihlKXtvLmkoIm1yYWlkLnVzZUN1c3RvbUNsb3NlICIrZSksdi51c2VDdXN0b21DbG9zZSE9PWUmJih2LnVzZUN1c3RvbUNsb3NlPWUsTigidXNlQ3VzdG9tQ2xvc2U/dXNlQ3VzdG9tQ2xvc2U9Iit2LnVzZUN1c3RvbUNsb3NlKSl9LHMuc2V0Q3VycmVudFBvc2l0aW9uPWZ1bmN0aW9uKGUsdCxpLG4pe28uaSgibXJhaWQuc2V0Q3VycmVudFBvc2l0aW9uICIrZSsiLCIrdCsiLCIraSsiLCIrbiksdy54PWUsdy55PXQsdy53aWR0aD1pLHcuaGVpZ2h0PW59LHMuc2V0RGVmYXVsdFBvc2l0aW9uPWZ1bmN0aW9uKGUsdCxpLG4pe28uaSgibXJhaWQuc2V0RGVmYXVsdFBvc2l0aW9uICIrZSsiLCIrdCsiLCIraSsiLCIrbiksUC54PWUsUC55PXQsUC53aWR0aD1pLFAuaGVpZ2h0PW59LHMuc2V0RXhwYW5kU2l6ZT1mdW5jdGlvbihlLHQpe28uaSgibXJhaWQuc2V0RXhwYW5kU2l6ZSAiK2UrIngiK3QpLHYud2lkdGg9ZSx2LmhlaWdodD10fSxzLnNldE1heFNpemU9ZnVuY3Rpb24oZSx0KXtvLmkoIm1yYWlkLnNldE1heFNpemUgIitlKyJ4Iit0KSxSLndpZHRoPWUsUi5oZWlnaHQ9dH0scy5zZXRQbGFjZW1lbnRUeXBlPWZ1bmN0aW9uKGUpe28uaSgibXJhaWQuc2V0UGxhY2VtZW50VHlwZSAiK2UpLGM9ZX0scy5zZXRTY3JlZW5TaXplPWZ1bmN0aW9uKGUsdCl7by5pKCJtcmFpZC5zZXRTY3JlZW5TaXplICIrZSsieCIrdCkseS53aWR0aD1lLHkuaGVpZ2h0PXQsbXx8KHYud2lkdGg9ZSx2LmhlaWdodD10KX0scy5zZXRTdXBwb3J0cz1mdW5jdGlvbihlLHQpe28uaSgibXJhaWQuc2V0U3VwcG9ydHMgIitlKyIgIit0KSxFW2VdPXR9LHMuZmlyZUVycm9yRXZlbnQ9ZnVuY3Rpb24oZSx0KXtvLmkoIm1yYWlkLmZpcmVFcnJvckV2ZW50ICIrZSsiICIrdCksVChzLkVWRU5UUy5FUlJPUixlLHQpfSxzLmZpcmVSZWFkeUV2ZW50PWZ1bmN0aW9uKCl7dGhpcy5pc05hdGl2ZVNka1JlYWR5PSEwLG8uaSgibXJhaWQuZmlyZVJlYWR5RXZlbnQ6ICIrdGhpcy5pc05hdGl2ZVNka1JlYWR5KSxUKHMuRVZFTlRTLlJFQURZKX0scy5maXJlU2l6ZUNoYW5nZUV2ZW50PWZ1bmN0aW9uKGUsdCl7by5pKCJtcmFpZC5maXJlU2l6ZUNoYW5nZUV2ZW50ICIrZSsieCIrdCksaCE9PXMuU1RBVEVTLkxPQURJTkcmJlQocy5FVkVOVFMuU0laRUNIQU5HRSxlLHQpfSxzLmZpcmVTdGF0ZUNoYW5nZUV2ZW50PWZ1bmN0aW9uKGUpe28uaSgibXJhaWQuZmlyZVN0YXRlQ2hhbmdlRXZlbnQgIitlKSxoIT09ZSYmKGg9ZSxUKHMuRVZFTlRTLlNUQVRFQ0hBTkdFLGgpKX0scy5maXJlVmlld2FibGVDaGFuZ2VFdmVudD1mdW5jdGlvbihlKXtvLmkoIm1yYWlkLmZpcmVWaWV3YWJsZUNoYW5nZUV2ZW50ICIrZSksZyE9PWUmJihnPWUsVChzLkVWRU5UUy5WSUVXQUJMRUNIQU5HRSxnKSl9LHMuYWRMb2FkZWQ9ITE7ZnVuY3Rpb24gTihlKXtpZighcy5pc05hdGl2ZVNka1JlYWR5KXJldHVybiBjb25zb2xlLmxvZygicmVqZWN0aW5nICIrZSsiIGJlY2F1c2UgbXJhaWQgaXMgbm90IHJlYWR5Iiksdm9pZCBzLmZpcmVFcnJvckV2ZW50KCJtcmFpZCBpcyBub3QgcmVhZHkiLGUpO2xldCB0PSJtcmFpZDovLyIrZTtzLm5hdGl2ZUNhbGxSdW5uaW5nP3MubmF0aXZlQ2FsbFF1ZXVlLnB1c2godCk6KHMubmF0aXZlQ2FsbFJ1bm5pbmc9ITAsd2luZG93LmxvY2F0aW9uPXQpfWZ1bmN0aW9uIFQoZSl7dmFyIHQ9QXJyYXkucHJvdG90eXBlLnNsaWNlLmNhbGwoYXJndW1lbnRzKTt0LnNoaWZ0KCksby5pKCJmaXJlRXZlbnQgIitlKyIgWyIrdC50b1N0cmluZygpKyJdIik7dmFyIGk9U1tlXTtpZihpKXt2YXIgbj1pLnNsaWNlKCkscj1uLmxlbmd0aDtvLmkocisiIGxpc3RlbmVyKHMpIGZvdW5kIik7Zm9yKHZhciBzPTA7czxyO3MrKyluW3NdLmFwcGx5KG51bGwsdCl9ZWxzZSBvLmkoIm5vIGxpc3RlbmVycyBmb3VuZCBmb3IgIitlKX1mdW5jdGlvbiB4KGUsdCl7Zm9yKHZhciBpIGluIHQpaWYodFtpXT09PWUpcmV0dXJuITA7cmV0dXJuITF9ZnVuY3Rpb24gSShlLHQpe3ZhciBpPSEwLG49QVt0XTtmb3IodmFyIHIgaW4gZSl7dmFyIG89bltyXSxhPWVbcl07byYmIW8oYSkmJihzLmZpcmVFcnJvckV2ZW50KCJWYWx1ZSBvZiBwcm9wZXJ0eSAiK3IrIiAoIithKyIpIGlzIGludmFsaWQiLCJtcmFpZC4iK3QpLGk9ITEpfXJldHVybiBpfXMubm9GaWxsPWZ1bmN0aW9uKCl7cy5hZExvYWRlZHx8KG8uaSgibXJhaWQubm9GaWxsIiksTigibm9GaWxsIikpfSxzLmxvYWRlZD1mdW5jdGlvbigpe28uaSgibXJhaWQubG9hZGVkIikscy5hZExvYWRlZD0hMCxOKCJsb2FkZWQiKX0scy5nZXRBcHBvZGVhbFZlcnNpb249ZnVuY3Rpb24oKXtyZXR1cm4gby5pKCJtcmFpZC5nZXRBcHBvZGVhbFZlcnNpb24iKSwiJSVWRVJTSU9OJSUifSxzLm5hdGl2ZUNhbGxDb21wbGV0ZT1mdW5jdGlvbigpe2lmKG8uaSgibXJhaWQubmF0aXZlQ2FsbENvbXBsZXRlIiksMCE9PXRoaXMubmF0aXZlQ2FsbFF1ZXVlLmxlbmd0aCl7dmFyIGU9dGhpcy5uYXRpdmVDYWxsUXVldWUucG9wKCk7d2luZG93LmxvY2F0aW9uPWV9ZWxzZSB0aGlzLm5hdGl2ZUNhbGxSdW5uaW5nPSExfTt2YXIgQT17c2V0RXhwYW5kUHJvcGVydGllczp7d2lkdGg6ZnVuY3Rpb24oZSl7cmV0dXJuIWlzTmFOKGUpfSxoZWlnaHQ6ZnVuY3Rpb24oZSl7cmV0dXJuIWlzTmFOKGUpfSx1c2VDdXN0b21DbG9zZTpmdW5jdGlvbihlKXtyZXR1cm4iYm9vbGVhbiI9PXR5cGVvZiBlfX0sc2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzOnthbGxvd09yaWVudGF0aW9uQ2hhbmdlOmZ1bmN0aW9uKGUpe3JldHVybiJib29sZWFuIj09dHlwZW9mIGV9LGZvcmNlT3JpZW50YXRpb246ZnVuY3Rpb24oZSl7cmV0dXJuInN0cmluZyI9PXR5cGVvZiBlJiYtMSE9PVsicG9ydHJhaXQiLCJsYW5kc2NhcGUiLCJub25lIl0uaW5kZXhPZihlKX19LHNldFJlc2l6ZVByb3BlcnRpZXM6e3dpZHRoOmZ1bmN0aW9uKGUpe3JldHVybiFpc05hTihlKSYmNTA8PWV9LGhlaWdodDpmdW5jdGlvbihlKXtyZXR1cm4haXNOYU4oZSkmJjUwPD1lfSxvZmZzZXRYOmZ1bmN0aW9uKGUpe3JldHVybiFpc05hTihlKX0sb2Zmc2V0WTpmdW5jdGlvbihlKXtyZXR1cm4haXNOYU4oZSl9LGN1c3RvbUNsb3NlUG9zaXRpb246ZnVuY3Rpb24oZSl7cmV0dXJuInN0cmluZyI9PXR5cGVvZiBlJiYtMSE9PVsidG9wLWxlZnQiLCJ0b3AtY2VudGVyIiwidG9wLXJpZ2h0IiwiY2VudGVyIiwiYm90dG9tLWxlZnQiLCJib3R0b20tY2VudGVyIiwiYm90dG9tLXJpZ2h0Il0uaW5kZXhPZihlKX0sYWxsb3dPZmZzY3JlZW46ZnVuY3Rpb24oZSl7cmV0dXJuImJvb2xlYW4iPT10eXBlb2YgZX19fTtmdW5jdGlvbiB6KGUsdCl7cmV0dXJuIG8uZCgiaXNSZWN0Q29udGFpbmVkIiksRCgiY29udGFpbmluZ1JlY3QiLGUpLEQoImNvbnRhaW5lZFJlY3QiLHQpLHQueD49ZS54JiZ0LngrdC53aWR0aDw9ZS54K2Uud2lkdGgmJnQueT49ZS55JiZ0LnkrdC5oZWlnaHQ8PWUueStlLmhlaWdodH1mdW5jdGlvbiBEKGUsdCl7by5kKGUrIiBbIit0LngrIiwiK3QueSsiXSxbIisodC54K3Qud2lkdGgpKyIsIisodC55K3QuaGVpZ2h0KSsiXSAoIit0LndpZHRoKyJ4Iit0LmhlaWdodCsiKSIpfXMuZHVtcExpc3RlbmVycz1mdW5jdGlvbigpe3ZhciBlPU9iamVjdC5rZXlzKFMpLmxlbmd0aDtmb3IodmFyIHQgaW4gby5pKCJkdW1waW5nIGxpc3RlbmVycyAoIitlKyIgZXZlbnRzKSIpLFMpe3ZhciBpPVNbdF07by5pKCIgICIrdCsiIGNvbnRhaW5zICIraS5sZW5ndGgrIiBsaXN0ZW5lcnMiKTtmb3IodmFyIG49MDtuPGkubGVuZ3RoO24rKylvLmkoIiAgICAiK2lbbl0pfX0sY29uc29sZS5sb2coIk1SQUlEIG9iamVjdCBsb2FkZWQiKX0oKTs="

    .line 49
    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Lcom/explorestack/iab/IabSettings;->mediatorVersion:Ljava/lang/String;

    const-string v2, "%%VERSION%%"

    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/mraid/f;->d:Ljava/lang/String;

    .line 52
    :cond_0
    sget-object v0, Lcom/explorestack/iab/mraid/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;[C)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 244
    :cond_0
    sget-boolean v1, Lcom/explorestack/iab/mraid/f;->b:Z

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 247
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 248
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_5

    .line 250
    aget-char v7, p1, v6

    if-ne v5, v7, :cond_4

    .line 251
    aget v5, v2, v6

    if-lez v5, :cond_3

    .line 253
    new-instance v7, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    aput v3, v2, v6

    goto :goto_3

    .line 256
    :cond_3
    aput v4, v2, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    :cond_6
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "parseCommandUrl"

    .line 98
    invoke-static {v0, p0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x3f

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    .line 109
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v2, v4

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    array-length v2, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_0

    aget-object v8, v0, v7

    const/16 v9, 0x3d

    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 114
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v9, v4

    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 116
    invoke-interface {v1, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v6

    .line 1141
    :cond_1
    sget-object v2, Lcom/explorestack/iab/mraid/f;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x0

    const-string v7, "command"

    if-nez v2, :cond_2

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is unknown"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 1145
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v8, "useCustomClose"

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "setResizeProperties"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "setOrientationProperties"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "playVideo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 1160
    :pswitch_0
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_3

    :pswitch_1
    const-string v2, "width"

    .line 1153
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "height"

    .line 1154
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "offsetX"

    .line 1155
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "offsetY"

    .line 1156
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "customClosePosition"

    .line 1157
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "allowOffscreen"

    .line 1158
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :pswitch_2
    const-string v2, "allowOrientationChange"

    .line 1150
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "forceOrientation"

    .line 1151
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_2
    const/4 v4, 0x0

    goto :goto_3

    :pswitch_3
    const-string v2, "url"

    .line 1148
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    :cond_9
    :goto_3
    if-nez v4, :cond_a

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is missing parameters"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 134
    :cond_a
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-interface {p0, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_4
        0x34264a -> :sswitch_3
        0x7f3dfe1 -> :sswitch_2
        0x253cb189 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuffer;)V
    .locals 6

    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "<head[^>]*>"

    const/4 v1, 0x2

    .line 222
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 224
    invoke-static {v2, v1}, Lcom/explorestack/iab/mraid/f;->a(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v1

    .line 227
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 1269
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1270
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v2, v5, :cond_2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v2, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    const-string v0, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\" /><style>body { margin:0; padding:0;}*:not(input) { -webkit-touch-callout:none; -webkit-user-select:none; -webkit-text-size-adjust:none; }</style>"

    .line 230
    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    return-void

    :array_0
    .array-data 2
        0x22s
        0x27s
    .end array-data
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/explorestack/iab/mraid/f;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    .line 64
    invoke-static {p1}, Lcom/explorestack/iab/mraid/f;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\\'])mraid\\.js\\1[^>]*>\\s*</script>\\n*"

    const/4 v2, 0x2

    .line 181
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "<html"

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "<head"

    .line 189
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "<body"

    .line 190
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v1, :cond_1

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    if-nez v4, :cond_3

    :cond_2
    return-object p0

    :cond_3
    const/4 p0, 0x0

    if-nez v1, :cond_4

    const-string v1, "<html><head></head><body><div align=\"center\">"

    .line 198
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "</div></body></html>"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    const-string v1, "<html[^>]*>"

    .line 203
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 206
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 207
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    const-string v2, "<head></head>"

    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    goto :goto_0

    .line 211
    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/explorestack/iab/mraid/f;->a(Ljava/lang/StringBuffer;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

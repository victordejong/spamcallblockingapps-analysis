.class public final Lcom/explorestack/iab/utils/d;
.super Lcom/explorestack/iab/utils/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/iab/utils/i<",
        "Lcom/explorestack/iab/vast/view/CircleCountdownView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/i;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;
    .locals 0

    .line 21
    invoke-static {p1, p2}, Lcom/explorestack/iab/utils/Assets;->resolveDefCloseStyle(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/h;)V
    .locals 1

    .line 11
    check-cast p2, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    .line 1035
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/iab/utils/i;->a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/h;)V

    .line 1153
    iget-object p1, p3, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v0, "skip"

    .line 1036
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2153
    iget-object p1, p3, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string p3, "skipfill"

    .line 1036
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAACY0lEQVR4Ae3aAWRbURTH4YNiKIqggKEYCiiKYQQABQAMARRBAVAADEEBUAAEAADBAMMwBADFADAURXYQoZdoOLie+338PQK4fnmJ5wUAAAAAAAAAAAAAAAAAAAAAAHACrnJ3uWVunpvFuM5zX3Pf99fz4KiL3HNu1+w195A7i3Gc5R5zb81ZvO0/b86CWe6ljafZZpBv4GXu9wdn8UtE761zuxP2sxrRBOLZnngWjznSbXs4g0Z0Sjztz9lFEPe5XT2iIeJp9y2IVW5Xj2iMeJotguYOVIlogHiazYO4ye3qEQ0VT/MfiPUAEZXjafYjDpjl/k41og7x/Ml9inf4MsWIOsSzzV0G40QkHhGJR0Ti6U9E4hGRePoTkXhEJJ7+RCQeEYmnPxGJR0TiqROReOpEJJ46EYmnTkTiqROReMpEJJ4CEYmnQETiKRGReEpEJJ4kIvH0JyLxiEg8/YlIPCIST38iEo+IxEP9ZbA+L6UhHhGJR0T9iUdE4hFRf+IRkXhE1It4RNQQz7bysFFE4rksPLEWkXj2RFQgHhGViUdEZeIRUZl4RFQmHhGViUdEZeIRkXjqRCQeEXUnHhGJR0T9iUdE4hFRf+IRkXhEJJ5uRCQeEYlHROM47x/PpCLa5M7igKf+8Uwuoodc4rp/PJOM6DU3i2DRP57JRjSPYNU/nslGtIxgOXA81YjuIpgPHk8loqtcYjNqPIWInuOAz7l/o8VTiOgldxENER2/Ez0N9vR1llsfOYt1bhZHMc8tc6vcIncd47rJ3edW++ttAAAAAAAAAAAAAAAAAAAAAAAAfOA/5Zwc/aYfb7AAAAAASUVORK5CYII="

    .line 1039
    invoke-static {p1}, Lcom/explorestack/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "iVBORw0KGgoAAAANSUhEUgAAAJAAAACQCAYAAADnRuK4AAACoklEQVR4Ae3dAUScYRzH8eEQDiEMQxiGIQxhiGEIIQxhGEIIIQzDMAwhDMMQhiEMMIQhhABhCCGEEMLh9gMwi65nPau/z4cvAH784bx37z0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAALiOx+llWkqzxXYtpMU0k/4x5tNBGv/RXpq/57v2/7JrNz1NQauVNErjKxql92lQcNdGasDTdJnG1+ggPS64ay89StzAlzSeoIv0puCu87ScJsRpGt+g3TRTcNdOGqZrYtzQSXpZcNdxep5aOKAJ2kpTBXY1fHBwQK0dprkCuxo+ODig1i7TesFdF2k1tXBAE/QjPSqwq+GDgwNq7SwtFdx1mhZTCwc0QZ/TsOCu7TSVHFCHfqX5gruO0pwD6tMovU2Dgrs20sAB9Wk/zdbZ5Xna+D90kVYK7jpPrxxQv76l6YK7dtK0A+rTSVq4v7s8TxvfkT6mQbFdo/QhDRxQnw7Tk4K7DtITB9Sny7RWcNdFWnNA/fqeHhbdNeOA+nSWFu1yQK19SsOCu7bT0AF1fO5klwNqaZReV93lgPq1XHhXBw7oLE1V3eWA+rRYeFcHDuhd2V13nwNyQA5opfAuB9Thedmw/q7b4oA26u+6LQ5oq/6u2+CAztOKXTfhgH6mWbsm5YBGaTMN7JqUAzpKz+xyQO3f/7HLAbV/U88uB9T+HWi7HFDjrxXsckBNvwOzywG1/GLTLgd0nBbsugkH9DVN21XLnX5vjl0OaC/N2lXUXXzeY5cDOkpzdjmg9t9721Vb1Te4d3qORYd33thVWeF/sem0i7OW9/7ZxW7L8x67mE+jlncf28Vm69vX7WI5nV7xV03LdnEdg/Qirab1tJAGdgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdPQbak6roi3sq5YAAAAASUVORK5CYII="

    .line 1037
    invoke-static {p1}, Lcom/explorestack/iab/utils/Assets;->getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method final synthetic b(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/View;
    .locals 0

    .line 3028
    new-instance p2, Lcom/explorestack/iab/vast/view/CircleCountdownView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/vast/view/CircleCountdownView;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.class public final Lscala/reflect/NameTransformer;
.super Ljava/lang/Object;
.source "NameTransformer.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/reflect/NameTransformer$OpCodes;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\u0015q!B\u0001\u0003\u0011\u00039\u0011a\u0004(b[\u0016$&/\u00198tM>\u0014X.\u001a:\u000b\u0005\r!\u0011a\u0002:fM2,7\r\u001e\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0005\n\u001b\u0005\u0011a!\u0002\u0006\u0003\u0011\u0003Y!a\u0004(b[\u0016$&/\u00198tM>\u0014X.\u001a:\u0014\u0005%a\u0001CA\u0007\u000f\u001b\u0005!\u0011BA\u0008\u0005\u0005\u0019\te.\u001f*fM\")\u0011#\u0003C\u0001%\u00051A(\u001b8jiz\"\u0012a\u0002\u0005\u0008)%\u0011\r\u0011\"\u0001\u0016\u0003Qiu\nR+M\u000b~\u001bVK\u0012$J1~\u001bFKU%O\u000fV\ta\u0003\u0005\u0002\u001859\u0011Q\u0002G\u0005\u00033\u0011\ta\u0001\u0015:fI\u00164\u0017BA\u000e\u001d\u0005\u0019\u0019FO]5oO*\u0011\u0011\u0004\u0002\u0005\u0007=%\u0001\u000b\u0011\u0002\u000c\u0002+5{E)\u0016\'F?N+fIR%Y?N#&+\u0013(HA!9\u0001%\u0003b\u0001\n\u0003)\u0012\u0001\u0005(B\u001b\u0016{&jT%O?N#&+\u0013(H\u0011\u0019\u0011\u0013\u0002)A\u0005-\u0005\tb*Q\'F?*{\u0015JT0T)JKej\u0012\u0011\t\u000f\u0011J!\u0019!C\u0001K\u0005!Rj\u0014#V\u0019\u0016{\u0016JT*U\u0003:\u001bUi\u0018(B\u001b\u0016+\u0012A\n\t\u0003O1j\u0011\u0001\u000b\u0006\u0003S)\nA\u0001\\1oO*\t1&\u0001\u0003kCZ\u000c\u0017BA\u000e)\u0011\u0019q\u0013\u0002)A\u0005M\u0005)Rj\u0014#V\u0019\u0016{\u0016JT*U\u0003:\u001bUi\u0018(B\u001b\u0016\u0003\u0003b\u0002\u0019\n\u0005\u0004%\t!J\u0001\u0014\u0019>\u001b\u0015\tT0T+\u001a3\u0015\nW0T)JKej\u0012\u0005\u0007e%\u0001\u000b\u0011\u0002\u0014\u0002)1{5)\u0011\'`\'V3e)\u0013-`\'R\u0013\u0016JT$!\u0011\u001d!\u0014B1A\u0005\u0002\u0015\nAcU#U)\u0016\u0013vlU+G\r&Cvl\u0015+S\u0013:;\u0005B\u0002\u001c\nA\u0003%a%A\u000bT\u000bR#VIU0T+\u001a3\u0015\nW0T)JKej\u0012\u0011\t\u000faJ!\u0019!C\u0001K\u0005iBKU!J)~\u001bV\t\u0016+F%~\u001bV\tU!S\u0003R{%kX*U%&su\t\u0003\u0004;\u0013\u0001\u0006IAJ\u0001\u001f)J\u000b\u0015\nV0T\u000bR#VIU0T\u000bB\u000b%+\u0011+P%~\u001bFKU%O\u000f\u0002Bq\u0001P\u0005C\u0002\u0013%Q(\u0001\u0003o_B\u001cX#\u0001 \u0011\u00055y\u0014B\u0001!\u0005\u0005\rIe\u000e\u001e\u0005\u0007\u0005&\u0001\u000b\u0011\u0002 \u0002\u000b9|\u0007o\u001d\u0011\t\u000f\u0011K!\u0019!C\u0005{\u00051anY8eKNDaAR\u0005!\u0002\u0013q\u0014a\u00028d_\u0012,7\u000f\t\u0004\u0005\u0011&!\u0011JA\u0004Pa\u000e{G-Z:\u0014\u0005\u001dc\u0001\u0002C&H\u0005\u000b\u0007I\u0011\u0001\'\u0002\u0005=\u0004X#A\'\u0011\u00055q\u0015BA(\u0005\u0005\u0011\u0019\u0005.\u0019:\t\u0011E;%\u0011!Q\u0001\n5\u000b1a\u001c9!\u0011!\u0019vI!b\u0001\n\u0003)\u0012\u0001B2pI\u0016D\u0001\"V$\u0003\u0002\u0003\u0006IAF\u0001\u0006G>$W\r\t\u0005\t/\u001e\u0013)\u0019!C\u00011\u0006!a.\u001a=u+\u0005I\u0006C\u0001.H\u001b\u0005I\u0001\u0002\u0003/H\u0005\u0003\u0005\u000b\u0011B-\u0002\u000b9,\u0007\u0010\u001e\u0011\t\u000bE9E\u0011\u00010\u0015\te{\u0006-\u0019\u0005\u0006\u0017v\u0003\r!\u0014\u0005\u0006\'v\u0003\rA\u0006\u0005\u0006/v\u0003\r!\u0017\u0005\u0008G&\u0011\r\u0011\"\u0003e\u0003\u001dy\u0007OM2pI\u0016,\u0012!\u001a\t\u0004\u001b\u00194\u0012BA4\u0005\u0005\u0015\t%O]1z\u0011\u0019I\u0017\u0002)A\u0005K\u0006Aq\u000e\u001d\u001ad_\u0012,\u0007\u0005C\u0004l\u0013\t\u0007I\u0011\u00027\u0002\u000f\r|G-\u001a\u001apaV\tQ\u000eE\u0002\u000eMfCaa\\\u0005!\u0002\u0013i\u0017\u0001C2pI\u0016\u0014t\u000e\u001d\u0011\t\u000bELA\u0011\u0002:\u0002\u000f\u0015tG/\u001a:PaR\u00191O^<\u0011\u00055!\u0018BA;\u0005\u0005\u0011)f.\u001b;\t\u000b-\u0003\u0008\u0019A\'\t\u000bM\u0003\u0008\u0019\u0001\u000c\t\u000beLA\u0011\u0001>\u0002\r\u0015t7m\u001c3f)\t12\u0010C\u0003}q\u0002\u0007a#\u0001\u0003oC6,\u0007\"\u0002@\n\t\u0003y\u0018A\u00023fG>$W\rF\u0002\u0017\u0003\u0003Aa!a\u0001~\u0001\u00041\u0012!\u00028b[\u0016\u0004\u0004"
.end annotation


# direct methods
.method public static LOCAL_SUFFIX_STRING()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    invoke-virtual {v0}, Lscala/reflect/NameTransformer$;->LOCAL_SUFFIX_STRING()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static MODULE_INSTANCE_NAME()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    invoke-virtual {v0}, Lscala/reflect/NameTransformer$;->MODULE_INSTANCE_NAME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static MODULE_SUFFIX_STRING()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    invoke-virtual {v0}, Lscala/reflect/NameTransformer$;->MODULE_SUFFIX_STRING()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static NAME_JOIN_STRING()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    invoke-virtual {v0}, Lscala/reflect/NameTransformer$;->NAME_JOIN_STRING()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SETTER_SUFFIX_STRING()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    invoke-virtual {v0}, Lscala/reflect/NameTransformer$;->SETTER_SUFFIX_STRING()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static TRAIT_SETTER_SEPARATOR_STRING()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    invoke-virtual {v0}, Lscala/reflect/NameTransformer$;->TRAIT_SETTER_SEPARATOR_STRING()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    invoke-virtual {v0, p0}, Lscala/reflect/NameTransformer$;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    invoke-virtual {v0, p0}, Lscala/reflect/NameTransformer$;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

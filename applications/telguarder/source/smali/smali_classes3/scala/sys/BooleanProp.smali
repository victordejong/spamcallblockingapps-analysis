.class public interface abstract Lscala/sys/BooleanProp;
.super Ljava/lang/Object;
.source "BooleanProp.scala"

# interfaces
.implements Lscala/sys/Prop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/sys/BooleanProp$ConstantImpl;,
        Lscala/sys/BooleanProp$BooleanPropImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/sys/Prop<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005mcaB\u0001\u0003!\u0003\r\na\u0002\u0002\u000c\u0005>|G.Z1o!J|\u0007O\u0003\u0002\u0004\t\u0005\u00191/_:\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001aE\u0002\u0001\u00111\u0001\"!\u0003\u0006\u000e\u0003\u0011I!a\u0003\u0003\u0003\r\u0005s\u0017PU3g!\ria\u0002E\u0007\u0002\u0005%\u0011qB\u0001\u0002\u0005!J|\u0007\u000f\u0005\u0002\n#%\u0011!\u0003\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u0015!\u0002A\"\u0001\u0016\u0003\u00151\u0018\r\\;f+\u0005\u0001\u0002\"B\u000c\u0001\r\u0003A\u0012AB3oC\ndW\rF\u0001\u001a!\tI!$\u0003\u0002\u001c\t\t!QK\\5u\u0011\u0015i\u0002A\"\u0001\u0019\u0003\u001d!\u0017n]1cY\u0016DQa\u0008\u0001\u0007\u0002a\ta\u0001^8hO2,w!B\u0011\u0003\u0011\u0003\u0011\u0013a\u0003\"p_2,\u0017M\u001c)s_B\u0004\"!D\u0012\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u0013\u0014\u0005\rB\u0001\"\u0002\u0014$\t\u00039\u0013A\u0002\u001fj]&$h\u0008F\u0001#\r\u0015I3\u0005\u0001\u0002+\u0005=\u0011un\u001c7fC:\u0004&o\u001c9J[Bd7c\u0001\u0015,]A\u0019Q\u0002\u000c\t\n\u00055\u0012!\u0001\u0003)s_BLU\u000e\u001d7\u0011\u00055\u0001\u0001\"\u0003\u0019)\u0005\u0003\u0005\u000b\u0011B\u00199\u0003\rYW-\u001f\t\u0003eUr!!C\u001a\n\u0005Q\"\u0011A\u0002)sK\u0012,g-\u0003\u00027o\t11\u000b\u001e:j]\u001eT!\u0001\u000e\u0003\n\u0005Ab\u0003\u0002\u0003\u001e)\u0005\u0003\u0005\u000b\u0011B\u001e\u0002\u000fY\u000cG.^3G]B!\u0011\u0002P\u0019\u0011\u0013\tiDAA\u0005Gk:\u001cG/[8oc!)a\u0005\u000bC\u0001\u007fQ\u0019\u0001IQ\"\u0011\u0005\u0005CS\"A\u0012\t\u000bAr\u0004\u0019A\u0019\t\u000bir\u0004\u0019A\u001e\t\u000b\u0015CC\u0011\t$\u0002\u0011M,GOV1mk\u0016,\"a\u0012\'\u0015\u0005AA\u0005\"B%E\u0001\u0004Q\u0015\u0001\u00038foZ\u000bG.^3\u0011\u0005-cE\u0002\u0001\u0003\u0006\u001b\u0012\u0013\rA\u0014\u0002\u0003)F\n\"\u0001E(\u0011\u0005%\u0001\u0016BA)\u0005\u0005\r\te.\u001f\u0005\u0006/!\"\t\u0001\u0007\u0005\u0006;!\"\t\u0001\u0007\u0005\u0006?!\"\t\u0001\u0007\u0004\u0006-\u000e\u0002!a\u0016\u0002\r\u0007>t7\u000f^1oi&k\u0007\u000f\\\n\u0004+\"q\u0003\u0002\u0003\u0019V\u0005\u000b\u0007I\u0011A-\u0016\u0003EB\u0001bW+\u0003\u0002\u0003\u0006I!M\u0001\u0005W\u0016L\u0008\u0005\u0003\u0005\u0015+\n\u0015\r\u0011\"\u0001\u0016\u0011!qVK!A!\u0002\u0013\u0001\u0012A\u0002<bYV,\u0007\u0005C\u0003\'+\u0012\u0005\u0001\rF\u0002bE\u000e\u0004\"!Q+\t\u000bAz\u0006\u0019A\u0019\t\u000bQy\u0006\u0019\u0001\t\t\u000f\u0015,&\u0019!C\u0001+\u0005)\u0011n]*fi\"1q-\u0016Q\u0001\nA\ta![:TKR\u0004\u0003\"B5V\t\u0003Q\u0017aA:fiR\u00111N\u001d\t\u0003YFl\u0011!\u001c\u0006\u0003]>\u000cA\u0001\\1oO*\t\u0001/\u0001\u0003kCZ\u000c\u0017B\u0001\u001cn\u0011\u0015I\u0005\u000e1\u00012\u0011\u0015)U\u000b\"\u0001u+\t)\u0008\u0010\u0006\u0002\u0011m\")\u0011j\u001da\u0001oB\u00111\n\u001f\u0003\u0006\u001bN\u0014\rA\u0014\u0005\u0006uV#\t!W\u0001\u0004O\u0016$\u0008b\u0002?V\u0005\u0004%\t!`\u0001\u0006G2,\u0017M]\u000b\u00023!1q0\u0016Q\u0001\ne\taa\u00197fCJ\u0004\u0003bB\u000cV\u0005\u0004%\t! \u0005\u0008\u0003\u000b)\u0006\u0015!\u0003\u001a\u0003\u001d)g.\u00192mK\u0002Bq!H+C\u0002\u0013\u0005Q\u0010C\u0004\u0002\u000cU\u0003\u000b\u0011B\r\u0002\u0011\u0011L7/\u00192mK\u0002BqaH+C\u0002\u0013\u0005Q\u0010C\u0004\u0002\u0012U\u0003\u000b\u0011B\r\u0002\u000fQ|wm\u001a7fA!9\u0011QC+\u0005\u0002\u0005]\u0011AB8qi&|g.\u0006\u0002\u0002\u001aA!\u0011\"a\u0007\u0011\u0013\r\ti\u0002\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\r\u0005\u0005R\u000b\"\u0005\u0016\u0003\u0011QXM]8\t\u000f\u0005\u00152\u0005\"\u0001\u0002(\u0005Ya/\u00197vK&\u001bHK];f+\u0011\tI#!\u000c\u0015\u00079\nY\u0003\u0003\u00041\u0003G\u0001\r!\r\u0003\t\u0003_\t\u0019C1\u0001\u00022\t\tA+E\u0002\u00024=\u00032!CA\u001b\u0013\r\t9\u0004\u0002\u0002\u0008\u001d>$\u0008.\u001b8h\u0011\u001d\tYd\tC\u0001\u0003{\t\u0011b[3z\u000bbL7\u000f^:\u0016\t\u0005}\u00121\t\u000b\u0004]\u0005\u0005\u0003B\u0002\u0019\u0002:\u0001\u0007\u0011\u0007\u0002\u0005\u00020\u0005e\"\u0019AA\u0019\u0011\u001d\t9e\tC\u0001\u0003\u0013\n\u0001bY8ogR\u000cg\u000e\u001e\u000b\u0006]\u0005-\u0013Q\n\u0005\u0007a\u0005\u0015\u0003\u0019A\u0019\t\u000f\u0005=\u0013Q\ta\u0001!\u0005!\u0011n](o\u0011\u001d\t\u0019f\tC\u0002\u0003+\nACY8pY\u0016\u000cg\u000e\u0015:pa\u0006\u001b(i\\8mK\u0006tGc\u0001\t\u0002X!9\u0011\u0011LA)\u0001\u0004q\u0013!\u00012"
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract toggle()V
.end method

.method public abstract value()Z
.end method
